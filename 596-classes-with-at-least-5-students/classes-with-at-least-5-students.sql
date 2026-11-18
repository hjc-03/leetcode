# Write your MySQL query statement below
 WITH cte AS
 (
    SELECT
    class,
    COUNT(DISTINCT student)
    FROM Courses
    GROUP BY class
    HAVING COUNT(DISTINCT student) >= 5
 )
 SELECT
 class
 FROM cte;