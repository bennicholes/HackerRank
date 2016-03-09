-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT SUM(City.Population) 
FROM CITY 
INNER JOIN COUNTRY 
ON City.COUNTRYCODE=Country.CODE 
WHERE Country.Continent='Asia';