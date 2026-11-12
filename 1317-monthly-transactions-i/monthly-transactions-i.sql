# Write your MySQL query statement below
SELECT
DATE_FORMAT(t1.trans_date, '%Y-%m') AS month,
t1.country,
COUNT(*) AS trans_count,
SUM(CASE WHEN t1.state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
SUM(t1.amount) AS trans_total_amount,
SUM(CASE WHEN t1.state = 'approved' THEN t1.amount ELSE 0 END) AS approved_total_amount
FROM Transactions t1
JOIN Transactions t2
ON t1.id = t2.id
GROUP BY country, month;