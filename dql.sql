-- DQL - data Query language
-- Used to retrieve table data for usage
-- 1. select 

-- select col1, ... from <table>;
-- select * from <table>; -- all columns from the table
-- select table.* from <table>; -- all columns on table 'table'

select id, name from cats;
select * from cats;
select cats.* from cats;
select cats.id from cats;

select id, name from cat_food where id = 2;

insert into cats (name, fur_color, birthdate, favorite_food)
	values ('Friendly', 'white', '2015-10-01', 2),
	('Chuck', 'red', '1970-01-01', 3),
	('Max', 'blue', '2020-01-01', 1),
	('Frankie', 'yellow', '2012-01-01', 1);
	
select * from cats where for_color = 'green' or color = 'blue';

-- Where a value in a set of values 
select * from cats where fur_color in ('green', 'blue');

-- % - a wildcard of any size
-- _ - a wildcard of a single character length
select * from cats where lower(name) like 'fr_____';

select * from cats where birthdate < current_timestamp;

-- Use between to filter where a column is between two values (or dates!)
select * from cats where birthdate between '2008-01-01' and current_timestamp;