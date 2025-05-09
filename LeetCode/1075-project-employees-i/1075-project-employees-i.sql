# 각 프로젝트별 평균 시간, 소수점 두번째자리 반올림
SELECT p.project_id, ROUND(SUM(e.experience_years)/COUNT(e.employee_id),2) as average_years
FROM Project as p
LEFT JOIN Employee as e
ON p.employee_id = e.employee_id
GROUP BY p.project_id