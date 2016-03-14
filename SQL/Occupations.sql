-- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should Doctor, Professor, Singer, and Actor, respectively.

-- Note: Print NULL when there are no more names corresponding to an occupation.

select Doctor,
	   Professor,
	   Singer,
	   Actor 
FROM (SELECT Name,
			 Occupation,
			 row_number() 
			 over(partition by Occupation order by Name) 
			 rn from Occupations) 
AS source pivot ( max(name) for Occupation IN (Doctor,Professor,Singer,Actor) ) AS PVT;