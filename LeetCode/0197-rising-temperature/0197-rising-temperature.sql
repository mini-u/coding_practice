SELECT today.id FROM Weather as today
JOIN Weather as yesterday on date_add(yesterday.recordDate, interval 1 day) = today.recordDate
WHERE today.temperature > yesterday.temperature