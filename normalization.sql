-- database Normalization

-- Conceptual topic related to good table design
-- Normalization is categoried into various 'levels'
-- The goal of normalization is to reduce redundancy in the database.
-- Ideally, no data should be redundant.
-- There are a variety of normal forms, we will discuss
-- first, second, and third normal form.

-- Atomic: What does it mean to be atomic?  
-- It cannot be broken down into fundamental parts.  It needs to be broken down already.

-- NOT atomic
-- col1: 1122 spruce st.

-- atomic
-- col1: 1122 col2: spruce st.

-- 1NF - First Normal Form
-- 	1. every table must have a primary key.
--	2. every column should be atomic.

-- 2NF - Second Normal Form 
-- 	1. meet requirements for 1NF
-- 	2. All columns are about the primary key.
-- 			Really though: all non-key columns must be about the whole key.

-- 3NF - Third Normal Form
-- 	1. meet requirements for 2NF
-- 	2. no transitive/functional dependencies

-- Functional Dependency
-- order_items: quantity, rince, total - total is functionally dependent on quantity and price.  This should not be a dat storing column.

-- Transitive Dependency
-- City
-- State 
-- Street Address
-- User address: city_id, state_id, street_address, ...

-- Denormalization: The practice of adding redundancy to a database
--		generally to improve performance.