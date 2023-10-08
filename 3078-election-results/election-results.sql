# Write your MySQL query statement below

WITH cte as(
SELECT voter, candidate, 1/(COUNT(*) OVER(PARTITION BY voter)) pct
FROM votes
where candidate is not null)
,cte2 as(
SELECT candidate, RANK() OVER(ORDER BY SUM(pct) desc) rn
FROM cte
GROUP BY 1)

SELECT candidate from cte2 
where rn=1
ORDER BY 1