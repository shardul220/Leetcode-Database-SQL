

# with cte as(SELECT player_id, MIN(event_date)  mindate from activity group by 1)

# SELECT round(count(distinct c1.player_id)/count(distinct c2.player_id),2) fraction  from cte c1 RIGHT JOIN activity c2 ON c1.player_id=c2.player_id and DATE_ADD(c1.mindate, INTERVAL 1 DAY)=c2.event_date



WITH cte as(SELECT player_id, MIN(event_date) mindate from activity group by 1)

SELECT ROUND(COUNT(DISTINCT a2.player_id)/COUNT(DISTINCT a1.player_id),2) fraction  from cte a1 left JOIN activity a2 ON a1.player_id=a2.player_id and DATE_ADD(a1.mindate, INTERVAL 1 DAY)=a2.event_date


# rite your MySQL query statement below
# WITH t1 as(SELECT player_id, MIN(event_date) min_date from activity group by 1)

# SELECT ROUND(COUNT(DISTINCT a.player_id)/(SELECT COUNT(DISTINCT player_id) from activity),2) fraction  from activity a 
# JOIN t1 ON a.event_date=t1.min_date+1 AND a.player_id=t1.player_id
