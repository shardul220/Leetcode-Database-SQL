# Write your MySQL query statement below






# WITH RECURSIVE cte as (
#     SELECT product_id, product_name,  EXTRACT(year from period_start) cryr , EXTRACT(year from period_start) styr, EXTRACT(year from period_end) endyr, 
#     period_start, period_end,  average_daily_sales  
#     FROM sales s NATURAL JOIN product p 
#     UNION
#     SELECT product_id, product_name, cryr+1, EXTRACT(year from period_start) styr, endyr, 
#     period_start, period_end,  average_daily_sales
#     FROM cte 
#     WHERE cryr<endyr
# )
# ,
# t2 as(
# select *, 
# CASE WHEN styr=endyr and cryr=styr THEN datediff(period_end, period_start)+1
#      WHEN styr!=cryr and cryr!=endyr THEN datediff(str_to_date(CONCAT(cryr, '-12-31'), '%Y-%m-%d' ), str_to_date(CONCAT(cryr, '-01-01'), '%Y-%m-%d' ))+1
#      WHEN cryr=endyr and cryr!=styr THEN datediff(period_end, str_to_date(CONCAT(endyr, '-01-01'), '%Y-%m-%d' ))+1
#      WHEN cryr=styr and styr!=endyr THEN datediff(str_to_date(CONCAT(cryr, '-12-31'), '%Y-%m-%d' ), period_start)+1
#      END cs,
# datediff(period_end, str_to_date(CONCAT(endyr, '-01-01'), '%Y-%m-%d' ))+1 diff
# from cte)


# SELECT product_id, product_name, cryr report_year, cs*average_daily_sales total_amount
# FROM t2
# ORDER BY 1,3
























# # Create a table/view containing all dates from the Min start date to Max end-date
WITH RECURSIVE CTE AS
    (SELECT MIN(period_start) as date
     FROM Sales 
     UNION ALL
     SELECT DATE_ADD(date, INTERVAL 1 day)
     FROM CTE
     WHERE date <=  (SELECT MAX(period_end) FROM Sales))

 
SELECT 
        s.product_id, p.product_name, LEFT(e.date,4) as report_year, SUM(s.average_daily_sales) as total_amount
FROM Sales s
JOIN Product p ON p.product_id = s.product_id
JOIN CTE e ON s.period_start<=e.date AND s.period_end>=e.date #Join with those dates falling between sale period
GROUP BY 1,2,3  # Group By Year as well
ORDER BY 1,3

# select * from cte