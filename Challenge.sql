create database shirts_db;

	create table shirts (
		shirt_id int primary key auto_increment, 
		article varchar(100),
		color varchar(100), 
		shirt_size varchar(5),
		last_worn int);


	insert into shirts (shirt_id, article, color, shirt_size, last_worn)
		values 
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);



insert into shirts(color,article, shirt_size, last_worn ) values ('purple', 'polo shirt', 'M', 50);


select article, color from shirts;

select article, color, shirt_size, last_worn from shirts where shirt_size = 'm';

update shirts set shirt_size = 'L' where article = 'polo shirts';

update shirts set last_worn = 0 where last_worn = 15;
update shirts set color = 'off white', shirt_size = 'XS' where color = 'white';

delete from shirts where last_worn = 200;

delete from shirts where article = 'tank top';

delete from shirts;
drop table shirts;
