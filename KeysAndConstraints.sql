use students;
CREATE TABLE cricketer(
id int primary key auto_increment,
name varchar(20) NOT NULL,
email varchar(100) UNIQUE NOT NULL,
isActive boolean default 1,
noOfCenturies int CHECK(noOfCenturies>10)
);

INSERT INTO cricketer (name,email,noOfCenturies) values
("Virat kohli","vk@gmail.com",85),
("Rohit sharma","rs@gmail.com",50),
("KL Rahul","kl@gmail.com",21);

INSERT INTO cricketer (name,email,noOfCenturies,isActive) values
("Sachein Tendulkar","st@gmail.com",100,0),
("MS Dhoni","msd@gmail.com",16,0),
("Baian Laura","bl@gmail.com",53,0);

select * from cricketer;

create table jersey(
id int primary key auto_increment,
jersey int not null,
playerId int not null,
foreign key (playerId) references cricketer(id)
);

insert into jersey (jersey, playerId) values
(18,1),(7,5),(100,4);
insert into jersey (jersey, playerId) values
(180,10);

select * from jersey;
UPDATE jersey SET jersey=10 where id=3;
