-- Query the list of CITY names from STATION which have vowels as both their first and last characters. 
-- Your result cannot contain duplicates.

SELECT DISTINCT(CITY) 
FROM STATION 
WHERE CITY LIKE '[AEIOU]%' AND CITY LIKE '%[AEIOU]' 
ORDER BY CITY;

-- OR

SELECT DISTINCT CITY 
FROM STATION 
WHERE SUBSTR(UPPER(CITY),1,1) in ('A','E','I','O','U') and SUBSTR(UPPER(CITY),-1,1) in ('A','E','I','O','U');