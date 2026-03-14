-- Write your PostgreSQL query statement below
WITH Maxsalary AS (
    SELECT departmentId,MAX(salary) AS Max_salary
    FROM Employee 
    GROUP BY departmentId
)
SELECT e.name AS employee ,
d.name AS Department,
e.salary
FROM Employee e
JOIN  Maxsalary m
ON e.departmentId = m.DepartmentId
AND e.salary = m.Max_salary
JOIN Department d
ON e.departmentId = d.id;

