# Write your MySQL query statement below

WITH t1 as(SELECT customer_id , EXTRACT(year from order_date) yr, SUM(price) tprice
FROM orders o 
GROUP BY 1,2 ORDER BY 1,2)
,t2 as(
SELECT customer_id, tprice - LAG(tprice) OVER(PARTITION BY customer_id ORDER BY yr) diff, 
yr - LAG(yr) OVER(PARTITION BY customer_id ORDER BY yr) yrdiff
FROM t1)

SELECT customer_id from t1 
EXCEPT
SELECT customer_id from t2 where diff<=0 or yrdiff<>1

