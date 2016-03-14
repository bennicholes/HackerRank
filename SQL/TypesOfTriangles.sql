-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

-- Not A Triangle: The given values of A, B, and C don't form a triangle.
-- Equilateral: It's a triangle with 33 sides of equal length.
-- Isosceles: It's a triangle with 22 sides of equal length.
-- Scalene: It's a triangle with 33 sides of differing lengths.

SELECT CASE WHEN (A+B <= C) or (B+C<=A) or (A+C<=B) THEN 'Not A Triangle' 
WHEN (A=B AND B=C) 
THEN 'Equilateral' 
WHEN ((A=B AND B!=C) OR (B=C AND A!=B) OR(A=C AND C!=B)) 
THEN 'Isosceles' 
ELSE 'Scalene' 
END
FROM TRIANGLES;