# 직속 부하 직원이 적어도 5명 있는 사람
SELECT m.name
FROM Employee as e
JOIN Employee as m
ON e.managerId = m.id
GROUP BY e.managerId
HAVING COUNT(*) >=5