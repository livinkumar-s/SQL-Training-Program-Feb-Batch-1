use students;

INSERT INTO actorlist VALUES
(1,"Vijay",53),
(2,"Ajith",54),
(3,"Rajini",74),
(4,"Prabhas",45),
(5,"Kamal Hasan",70),
(6,"Balayya",56);

INSERT INTO actorlist
VALUES (8,"Pawan Kalyan",62);


SELECT * from actorlist;
SELECT * from actorlist WHERE name="Balayya";

UPDATE actorlist SET age=65 WHERE id=6;

update actorlist 
SET name="Kamal haasan",age=71 where id=5;

DELETE FROM actorlist WHERE id=1;

DELETE FROM actorlist;

SET SQL_SAFE_UPDATES=1;