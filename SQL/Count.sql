-- Query a count of the number of cities in CITY with populations larger than 100,000.

SELECT COUNT(Name) 
FROM City 
WHERE population > 100000;