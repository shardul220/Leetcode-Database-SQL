# Write your MySQL query statement below

WITH recursive cte as(
    SELECT 1 as id
    UNION
    SELECT id+1 id FROM cte
    WHERE id<(SELECT MAX(customer_id) from customers)
)


select id ids from cte
WHERE id not in (SELECT customer_id from customers)

























# WITH recursive cte as (SELECT 1 as id UNION SELECT id+1 from cte where id<(SELECT MAX(customer_id) from customers)),
# t2 as(select id as ids, customer_id from cte LEFT join Customers c on id = customer_id)

# SELECT ids from t2 where customer_id IS NULL

