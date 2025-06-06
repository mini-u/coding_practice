SELECT s.*, sub.subject_name, COUNT(e.subject_name) as attended_exams
FROM Students as s
CROSS JOIN Subjects as sub
    LEFT JOIN Examinations as e
    ON s.student_id = e.student_id and sub.subject_name = e.subject_name
GROUP BY s.student_id, sub.subject_name
ORDER BY s.student_id, sub.subject_name