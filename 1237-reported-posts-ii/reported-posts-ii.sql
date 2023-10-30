# # Write your MySQL query statement below


WITH cte as(SELECT post_id, action_date
FROM actions
WHERE action='report' and extra='spam')

SELECT ROUND(AVG(pct),2) average_daily_percent
FROM (SELECT action_date, 100*COUNT(distinct r.post_id)/COUNT(distinct c.post_id) pct
FROM cte c  NATURAL LEFT JOIN removals r  
GROUP BY 1)s





























# WITH t1 as(SELECT action_date, 100*COUNT(distinct r.post_id)/COUNT(distinct a.post_id) rmvd_perc from actions a LEFT JOIN removals r ON a.post_id=r.post_id WHERE extra='spam' AND action='report' GROUP BY 1)

# SELECT ROUND(AVG(rmvd_perc),2) average_daily_percent FROM t1