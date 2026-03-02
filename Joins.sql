use students;

select * from cricketer;
select * from jersey;

create table latestMovie (
id int primary key auto_increment,
movie varchar(20) not null,
actorId int
);
create table spouse (
id int primary key auto_increment,
name varchar(20) not null,
actorId int
);

select * from actorlist;
select * from latestMovie;

insert into latestMovie (movie,actorId) values
("GOAT",1),
("Thug life",5),
("GBU",2),
("Animal",7),
("F1",10);

insert into spouse (name,actorId) values
("sangeetha",1),
("Shalini",2),
("Ana",8);

SELECT a.name,l.movie, s.name as spouseName
FROM actorlist a INNER JOIN
latestmovie l ON a.id=l.actorId inner join 
spouse s on s.actorId=a.id;

SELECT * FROM actorlist left JOIN
latestmovie ON actorlist.id=latestmovie.actorId;
SELECT * FROM actorlist right JOIN
latestmovie ON actorlist.id=latestmovie.actorId;

SELECT * FROM actorlist left JOIN
latestmovie ON actorlist.id=latestmovie.actorId
union
SELECT * FROM actorlist right JOIN
latestmovie ON actorlist.id=latestmovie.actorId;

SELECT * FROM actorlist full JOIN
latestmovie ON actorlist.id=latestmovie.actorId;

select * from actorlist CROSS JOIN latestmovie;