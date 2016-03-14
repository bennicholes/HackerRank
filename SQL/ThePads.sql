-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: 
-- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

-- Note: There will be at least two entries in the table for each type of occupation.

SELECT CONCAT(Name,'(',Substring(Occupation,1,1),')') Name
FROM occupations
Order BY Name
SELECT CONCAT('There are total',' ',COUNT(occupation),' ',LOWER(occupation),'s.') AS total
FROM occupations
GROUP BY occupation
ORDER BY total