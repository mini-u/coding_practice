# Write your MySQL query statement below
SELECT s.user_id, ROUND(IFNULL(AVG(c.action = 'confirmed'),0),2)  as confirmation_rate
FROM Signups as s
LEFT JOIN Confirmations as c
ON s.user_id = c.user_id
GROUP BY s.user_id