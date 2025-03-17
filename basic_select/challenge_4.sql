/**
The challenge is about to ask us how to get shortest and longest city length.
instead of comparing one by on use MIN and MAX syntax, 
and because its separated it will need UNION
*/

(SELECT CITY, LENGTH(CITY) FROM STATION 
WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION) 
AND LAT_N > 0 AND LONG_W > 0 ORDER BY LIMIT 1)
UNION
(SELECT CITY, LENGTH(CITY) FROM STATION 
WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION) 
AND LAT_N > 0 AND LONG_W > 0 ORDER BY LIMIT 1)
ORDER BY CITY
