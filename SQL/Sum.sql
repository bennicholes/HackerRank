-- Query the total population of all cities in CITY where District is California.

SELECT SUM(Population) 
FROM City 
WHERE DISTRICT = 'California';
