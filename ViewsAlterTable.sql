use students;

CREATE TABLE studentDetail(
studentId int primary key auto_increment,
name varchar(20) not null,
age int not null,
email varchar(100) not null unique,
phone bigint not null unique,
mark int not null,
dept enum ("ECE","EEE","CIVIL")
);

INSERT INTO studentDetail(name,age,email,phone,mark,dept) VALUES
("John Doe", 20, "john.doe@example.com", 1234567890, 85, "ECE"),
("Jane Smith", 22, "jane.smith@example.com", 0987654321, 90, "EEE"),
("Alice Johnson", 19, "alice.johnson@example.com", 1122334455, 88, "CIVIL"),
("Bob Brown", 21, "bob.brown@example.com", 1122334455, 92, "ECE"),
("Charlie Davis", 23, "charlie.davis@example.com", 1122334455, 95, "EEE"),
("Eve Wilson", 20, "eve.wilson@example.com", 1122334455, 90, "CIVIL");

select * from contactdetails;

INSERT INTO studentDetail(name,age,email,phone,mark,dept) VALUES
("David Lee", 24, "david.lee@example.com", 1120000000, 90, "ECE");

create view adminView as select * from studentdetail;
create view teacherView as select studentId,name, mark, dept from studentdetail;
create view studentView as select name,mark from studentdetail;

create or replace view studentView as select name,mark,dept from studentdetail;

select * from adminView;
select * from studentView;
select * from teacherView;

select * from actorlist;
select * from studentdetail;
TRUNCATE TABLE studentdetail;

alter table actorlist add lastmovie varchar(50) not null;
alter table actorlist modify name varchar(20) unique;
ALTER TABLE actorlist DROP COLUMN lastmovie;
ALTER TABLE actorlist RENAME COLUMN firstmovie to first_movie;

ALTER TABLE actorlist RENAME TO actordetail;
DROP TABLE spouse;