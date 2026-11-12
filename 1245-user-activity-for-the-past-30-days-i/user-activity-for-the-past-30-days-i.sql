# Write your MySQL query statement below
SELECT
activity_date as day,
COUNT(DISTINCT user_id) as active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-28', INTERVAL 30 DAY) AND '2019-07-27' 
GROUP BY day;