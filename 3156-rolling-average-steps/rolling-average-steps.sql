# Write your MySQL query statement below



 

WITH steps1 as(SELECT distinct s1.user_id, s1.steps_count, s1.steps_date
FROM steps s1 JOIN steps s2 ON s1.user_id=s2.user_id and (s1.steps_date+1=s2.steps_date or s1.steps_date-1=s2.steps_date)),
cte as(SELECT user_id, steps_date,
        AVG(steps_count) OVER(PARTITION BY user_id ORDER BY steps_date ROWS BETWEEN 2 preceding and CURRENT ROW ) ra,
        row_number() OVER(PARTITION BY user_id ORDER BY steps_date) rn
FROM steps1)

SELECT user_id, steps_date, round(ra,2) rolling_average
FROM cte
where rn>=3
ORDER BY 1,2