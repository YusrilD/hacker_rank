-- /**
-- query a list of city that only start with letter vowels
-- */


SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) IN ('a','i','u','e','o');