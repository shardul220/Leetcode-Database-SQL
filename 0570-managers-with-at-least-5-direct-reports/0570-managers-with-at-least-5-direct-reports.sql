# Write your MySQL query statement below

# SELECT  e2.name 
# FROM employee e1 JOIN employee e2 ON e1.managerId=e2.id
# GROUP BY 1
# HAVING COUNT(*)>=5

SELECT e2.name from employee e1 JOIN employee e2 ON e1.managerId=e2.id GROUP BY e1.managerId HAVING COUNT(*)>=5
