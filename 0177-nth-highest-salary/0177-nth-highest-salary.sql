CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      WITH t1 as(SELECT salary, DENSE_RANK() OVER(ORDER BY salary desc) rn from employee)
      
      SELECT  MAX(salary) END from t1 where rn=N
  );
END