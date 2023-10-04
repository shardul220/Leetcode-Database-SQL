# Write your MySQL query statement below

SELECT d1.order_date, ROUND(100*COUNT(d2.customer_pref_delivery_date)/COUNT(d1.order_date),2) immediate_percentage
FROM delivery d1 LEFT JOIN (SELECT delivery_id, customer_pref_delivery_date from delivery) d2 ON  d1.order_date=d2.customer_pref_delivery_date and d1.delivery_id=d2.delivery_id
GROUP BY 1
ORDER BY 1