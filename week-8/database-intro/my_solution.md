
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

Reflection

What are databases for?
What is a one-to-many relationship?
What is a primary key? What is a foreign key? How can you determine which is which?
How can you select information out of a SQL database? What are some general guidelines for that?