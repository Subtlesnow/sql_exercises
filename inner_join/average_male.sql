SELECT * 
FROM `employees`
JOIN salaries 
on employees.emp_no = salaries.`emp_no`
WHERE gender = 'M';