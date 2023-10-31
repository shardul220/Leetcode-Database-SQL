# # Write your MySQL query statement below

WITH RECURSIVE cte as(
  SELECT 1 mth
  UNION 
  SELECT mth+1 FROM cte
  WHERE mth<12
),
t2 as(
SELECT c.mth , coalesce(SUM(ride_distance),0) tot_ride_distance, coalesce(SUM(ride_duration),0) tot_ride_duration
FROM cte c LEFT JOIN (SELECT * FROM rides) r ON mth=EXTRACT(month from requested_at) AND EXTRACT(year from requested_at)=2020
LEFT JOIN AcceptedRides ar ON r.ride_id=ar.ride_id
GROUP BY 1
ORDER BY 1)


SELECT mth month, ROUND(AVG(tot_ride_distance) OVER(ORDER BY mth ROWS BETWEEN Current row and 2 FOLLOWING),2) average_ride_distance,
ROUND(AVG(tot_ride_duration) OVER(ORDER BY mth ROWS BETWEEN Current row and 2 FOLLOWING),2) average_ride_duration 
from t2
limit 10
# GROUP BY
# select * from cte




























# WITH RECURSIVE mnths AS ( SELECT 1 AS mth UNION ALL SELECT mth + 1 AS mth FROM mnths WHERE mnths.mth <= 11 ),
# acc_r as(
#     SELECT mth, coalesce(SUM(a.ride_distance),0) rdt, coalesce(SUM(a.ride_duration),0) rdc
#     FROM AcceptedRides a LEFT JOIN rides r ON r.ride_id=a.ride_id RIGHT JOIN mnths 
#     ON mth=EXTRACT(month from requested_at) AND EXTRACT(year from requested_at)=2020 
#     GROUP BY 1 )

# select mth month, 
# ROUND(AVG(rdt) OVER(order BY mth ROWS between current row and 2 following),2) average_ride_distance,
# ROUND(AVG(rdc) OVER(order BY mth ROWS between current row and 2 following),2) average_ride_duration
# from acc_r 
# order by mth limit 10




