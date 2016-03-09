-- Query all columns for all American cities in CITY with populations larger than 100,000. The CountryCode for America is USA.

SELECT *
FROM city 
WHERE population > 100000 AND countrycode = 'usa' ;