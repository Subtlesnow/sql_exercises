SELECT ROUND(AVG(salary), 2) 
FROM employees
JOIN titles 
ON employees.emp_no = titles.emp_no
WHERE title Like "%Engineer%" AND gender = "F";