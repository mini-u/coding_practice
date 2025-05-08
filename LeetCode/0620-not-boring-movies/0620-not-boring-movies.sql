# Write your MySQL query statement below
SELECT * FROM Cinema
WHERE TRIM(description) != 'boring'
AND id % 2 = 1 
ORDER BY rating DESC