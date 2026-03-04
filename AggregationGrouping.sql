use students;

CREATE TABLE Products (
id int primary key auto_increment,
name varchar(20) not null,
price float not null,
category varchar(10) not null
);

insert into products (name,price,category)
value
("tomato",44.35,"veg"),
("onion",34.35,"veg"),
("eggplant",14.55,"veg"),
("apple",144.35,"fruit"),
("orange",100.44,"fruit"),
("grapes",194.35,"fruit"),
("headphone",1000,"gadget"),
("phone",30000,"gadget"),
("lap",100000,"gadget");

select * from products;
select count(price) from products;
select max(price) from products;
select min(price) from products;
select sum(price) from products;
select name,avg(price) from products;

select * from products where price>50;

select category,avg(price) from products 
group by category HAVING avg(price)>50;