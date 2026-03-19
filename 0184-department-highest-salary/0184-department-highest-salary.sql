-- Write your PostgreSQL query statement below
WITH maxsalary AS(
    SELECT departmentId,MAX(salary) AS max_salary
    FROM Employee
    GROUP BY departmentId
)
SELECT e.name AS Employee,
d.name AS Department,
e.salary
FROM Employee e
JOIN maxsalary m
ON e.departmentId = m.departmentId
AND e.salary = m.max_salary
JOIN Department d
ON e.departmentId = d.id;







