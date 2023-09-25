# Write your MySQL query statement below


WITH t1 as(SELECT *, SUM(salary) OVER(ORDER BY salary) sumsal,
70000 - SUM(salary) OVER(ORDER BY salary) ss from candidates where experience='Senior' ),
t2 as(
SELECT *, SUM(salary) OVER(ORDER BY salary) sumsal,
CASE WHEN (SELECT MIN(ss) from t1 where ss>0) IS NOT NULL THEN
    (SELECT MIN(ss) from t1 where ss>0) - SUM(salary) OVER(ORDER BY salary) ELSE 70000-SUM(salary) OVER(ORDER BY salary) END ss from candidates where experience='Junior')

SELECT employee_id from t1 where ss>0
UNION
SELECT employee_id from t2 where ss>0


