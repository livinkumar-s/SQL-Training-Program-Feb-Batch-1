use students;

select * from actorlist;
select * from actorlist where age>50;
select * from actorlist where age between 40 and 60;

select * from actorlist where age>=50 and id>4;
select * from actorlist where age>=50 or id>4;
select * from actorlist where not age<50;

select * from actorlist 
where id=3 or id=5 or id=7 or id=10 or id=11;

select * from actorlist 
where id in (423234,243234234,42132433421);

select * from actorlist where name like 'r%';
select * from actorlist where name like '%n';
select * from actorlist where name like '_____';
select * from actorlist where name like '%a%';
select * from actorlist ORDER BY name DESC;
select * from actorlist ORDER BY id DESC;
select * from actorlist limit 2 offset 4;
