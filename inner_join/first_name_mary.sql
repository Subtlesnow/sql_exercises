SELECT AVG(salary)
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE first_name = "Mary";