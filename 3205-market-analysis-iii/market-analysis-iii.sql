# Write your MySQL query statement below

WITH cte as(SELECT o.seller_id, COUNT(DISTINCT item_id) num_items
FROM users u NATURAL JOIN Orders o NATURAL JOIN Items i
WHERE favorite_brand<>item_brand
GROUP BY 1
ORDER BY 1
)

select * from cte 
where num_items = (SELECT max(num_items) from cte)
order by 1
# select o.seller_id, count(distinct item_id) from users u NATURAL JOIN Orders o NATURAL JOIN Items i where o.seller_id=26 and favorite_brand<>item_brand
# group by 1