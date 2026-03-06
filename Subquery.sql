use students;

create table students (
id int auto_increment primary key,
name varchar(40) not null,
mark int not null,
dept varchar(10) not null
);

insert into students (name, mark, dept) values
('Alice', 85, 'CS'),
('Bob', 90, 'Math'),
('Charlie', 78, 'CS'),
('David', 92, 'Math'),
('Eve', 88, 'CS'),
('Frank', 80, 'Math'),
('Grace', 95, 'Chem'),
('Heidi', 82, 'Chem'),
('Ivan', 91, 'CS'),
('Judy', 89, 'Math'),
('Karl', 87, 'Chem'),
('Leo', 83, 'CS'),
('Mallory', 94, 'Math'),
('Nina', 86, 'Chem'),
('Oscar', 90, 'CS');

select * from students;
select avg(mark) from students;

select * from students where 
mark>(select avg(mark) from students);

select mark from students where dept="chem";

select * from students where 
mark > ANY (select mark from students where dept="chem");


select * from students where 
mark >= ALL (select mark from students where dept="chem");

select name,mark,dept,
(select avg(mark) from students where dept=s1.dept) as avgMark
 from students s1 where
mark > 
(select avg(mark) from students where dept=s1.dept);