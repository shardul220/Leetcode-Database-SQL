# Write your MySQL query statement below

select ceil(minute/6) interval_no, sum(Order_count) total_orders
FROM orders
GROUP BY 1
