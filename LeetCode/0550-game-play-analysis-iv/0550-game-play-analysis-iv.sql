SELECT 
    ROUND(
        IFNULL(COUNT(DISTINCT a.player_id), 0) 
        / 
        IFNULL(total.total_players, 1),  -- 0으로 나누는 것 방지
        2
    ) AS fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) f
ON a.player_id = f.player_id
   AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY),
(
    SELECT COUNT(DISTINCT player_id) AS total_players
    FROM Activity
) total;