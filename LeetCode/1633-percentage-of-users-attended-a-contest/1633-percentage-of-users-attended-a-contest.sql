# Write your MySQL query statement below
SELECT r.contest_id, ROUND(COUNT(DISTINCT r.user_id)/(SELECT COUNT(*) FROM Users) *100,2) as percentage
FROM Register as r
LEFT JOIN Users as u
ON r.user_id = u.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC;