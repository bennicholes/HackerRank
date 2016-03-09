-- In other words, query the number of non-unique CITY names in STATION by subtracting the number of unique CITY entries in 
-- the table from the total number of CITY entries in the table.

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION;