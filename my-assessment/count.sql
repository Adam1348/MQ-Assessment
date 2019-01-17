-- Get the departments with number of employees greater or equals to 100

SELECT D.DepartmentName, COUNT(*) AS NumofEmployee
FROM Department D LEFT JOIN Employee E ON D.ID = E.department_id
GROUP BY D.DepartmentName
HAVING NumofEmployee >= 100
ORDER BY D.DepartmentName DESC;
