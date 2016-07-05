SELECT sum(salary) / count(salary)
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
WHERE employees.gender = "M";