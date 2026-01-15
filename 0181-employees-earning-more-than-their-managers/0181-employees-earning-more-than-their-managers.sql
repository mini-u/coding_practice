# Write your MySQL query statement below
SELECT em1.name AS Employee
FROM Employee em1
JOIN Employee em2
  ON em1.managerId = em2.id
WHERE em1.salary > em2.salary