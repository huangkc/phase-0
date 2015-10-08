
Challenge 8.4

1. 
SELECT * FROM states;

2. 
SELECT * FROM regions;

3. 
SELECT state_name, population FROM states;

4. 
SELECT state_name, population
FROM states
ORDER BY population DESC;

5.
SELECT state_name
FROM states
WHERE region_id=7;

6.
SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;

7.
SELECT state_name
FROM states
WHERE population > 1000000
AND population <1500000;

8.
SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;

9.
SELECT region_name
FROM regions
WHERE region_name LIKE '%Central%';

10.
SELECT regions.region_name, states.state_name
FROM regions
INNER JOIN states
ON regions.id=states.region_id
ORDER by region_id ASC;
Schema

![Schema](./imgs/schema8.4.png)


Reflection

What are databases for? 
Databases are structures for storing data.

What is a one-to-many relationship?
One entity can have many entities associated with it. For example,one person can own many cars.

What is a primary key? What is a foreign key? How can you determine which is which? A primary key is the unique identifier that identifies each record in a database. A foreign key is an attribute that refers to a primary key in another entity. Primary keys are unique. Foreign keys are not.

How can you select information out of a SQL database? 
Use the keyword SELECT.

What are some general guidelines for that?
After SELECT, specify the column(s) to select and then specify the table to select from. Then specify any conditions or restrictions.
