insert into cats (name, fur_color, birthdate) values 
	('Sparkles', 'black', current_timestamp);
	
insert into cats (name, fur_color, birthdate) values 
	('Butterbean', 'cream', '2010-01-01');
	
-- WHERE clause
-- WHERE clause is used asa filter, to filter for rows that 
-- match a predicate expression.  
-- SQL won't confuse assignment with comparison, so we can just 
-- use a single = sign.  We can use AND and OR as words.
update cats set birthdate = '2011-01-02' where name = 'Sparkles';

-- NOTE: in postgres || is string concatonation NOT an or
update cats set name = name || name where id = 2;
update cats set fur_color = 'green', birthdate = '2009-12-31';
	where id = 1;

delete from cats where id = 2 and name = 'ButterbeanButterbean';

insert into cat_food (name) 
	values ('chicken'), ('liver'), ('meow-mix');
	

-- Will give us an error,
-- this error maintains our referential integrity
-- 5 should be a string.
update cats set favorite_food = 5 where id = 1;

-- Referential Integrity
-- The principle that all references should reference valid
-- table data.

delete from cat_food where id = 1;