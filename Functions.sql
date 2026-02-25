use students;
select name as actorName, age as actorAge 
from actorlist;

select "Hero" as result;
select round(99.49) as result;
select ceil(99.00001) as result;
select floor(99.999999) as result;
select mod(55,4) as result;
select concat("Hello"," ","World","...!") as result;
select length("Priyanka") as result;
select UPPER("Priyanka") as result;
select LOWER("Priyanka") as result;
select REPLACE("Hello Hello Hello world","Hello","Hi") 
as result;
select curdate()
as result;
select curtime()
as result;
select now()
as result;
select datediff("2026-05-28",curdate())
as result;

select * from actorlist;

select concat("His name is ",name) as 
actorName from actorlist;

SELECT CONCAT(
    'His name is ',
    UPPER(name),
    '. He is ',
    age,
    ' years old.'
) AS actorName
FROM actorlist;
 