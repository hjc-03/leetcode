# Write your MySQL query statement below
WITH WeatherLag AS 
(
    SELECT 
        id,
        recordDate,
        temperature,
        LAG(temperature, 1) OVER (ORDER BY recordDate) as temperatureLag,
        LAG(recordDate, 1) OVER (ORDER BY recordDate) as recordDateLag
    FROM Weather
)
SELECT id as Id
FROM WeatherLag
WHERE temperature > temperatureLag
AND recordDate = DATE_ADD(recordDateLag, INTERVAL 1 DAY)