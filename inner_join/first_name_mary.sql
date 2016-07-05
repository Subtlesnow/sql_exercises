SELECT AVG(salaries.`salary`)
FROM employees
LEFT JOIN salaries on employees.emp_no = salaries.emp_no
WHERE employees.`first_name` = "Mary"