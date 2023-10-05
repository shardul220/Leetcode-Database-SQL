# Write your MySQL query statement below

WITH cte as(
SELECT 
    flight_id, 
    COUNT(*) psgr
FROM
    Passengers
GROUP BY
    1)

SELECT
    f.flight_id ,
    COALESCE(CASE WHEN c.psgr>=f.capacity THEN f.capacity ELSE c.psgr END, 0) booked_cnt,
    COALESCE(CASE WHEN c.psgr>=f.capacity THEN c.psgr-f.capacity ELSE 0 END, 0) waitlist_cnt
FROM
    flights f NATURAL LEFT JOIN cte c 
ORDER BY
    1 
 