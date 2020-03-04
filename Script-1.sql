-- DDL - data Definition language
-- create -- used to create new database objects
-- alter -- Used to modify an existing database object.
-- drop -- remove or delete a database object
-- truncate -- removes all data from an object,
--	leaving its structure

-- create table ANATOMY

drop table cats;
drop table cat_food;

create table if not exists cats (
-- comma separated list of column definitions
-- Column anatomy: [name datatype options...]
	id serial primary key,
	name varchar(40),
	fur_color varchar(15),
	birthdate DATE,
	favorite_food INTEGER references cat_food(id)
);

create table if not exists cat_food (
	id serial primary key,
	name varchar(40)
);

alter table cats (
	add column new_column integer
);

drop table cats;

-- remove data but leave the table
truncate table cats;

-- String like types:
-- char(n) - is a fixed size string of text, if the inserted 
--	string is shorter than n, it will be padded
-- varchar(n?) - is a variable sized string of text up to n if
--	provided.  Strings shorter than n will not be padded.
-- text - for strings of arbitrary size, generally for very large 
--	strings that we don't really need to search by.

-- SERIAL (and its subtypes) are pseudotypes that can only be
-- used at table creation.  Serial does three things:
-- 1. Creates an INTEGER (or subtype) datatype for the column.
-- 2. Creates a sequence.
--	A sequence is a stateful database object that represents
--	a sequence of values.
-- 3. Sets a default value for the column, to pull from the sequence.

-- numeric types
-- 1. Integer types - whole number, varying size based on type of int
-- 2. Numeric/Decimal - Non-floating point, decimal values.
-- 3. FLOAT/DOUBLE - Floating point decimal values.

-- Time
-- 1. Date - A date
-- 2. DATETIME - A date + time
-- 3. TIMESTAMP - Unix-time based timestamp

-- JSON
-- XML
-- Geometric Data
-- Arrays
-- Custom Datatypes
-- Enums
-- Boolean

-- Constraints
-- 1. Primary Key - Unique identifier for a row, implicitly unique and not nll
-- 2. Foreign Key - Reeference to other row by a foreign key value, generally the target row's primary key.
-- 3. NOT NULL - Null values are invalid for this column.
-- 4. unique - Every value in the unique column or columns must not be repeated in later columns.
-- 5. Check - Column value must return true whe nprovided toa predicate function.
-- 	ex) my_col INTEGER CHECK (my_col % 2 = 0)
-- 6. Exclude - Not commonly used, requires some external support.
-- 	Given a comparison rule and compared with all other column none may return true.

-- DML sublanguage - interacts with tables