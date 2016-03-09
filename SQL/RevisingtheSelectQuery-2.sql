-- Query the names of all American cities in CITY with populations larger than 120,000. The CountryCode for America is USA.

SELECT NAME
FROM CITY
WHERE population > 120000 AND countrycode = 'usa';