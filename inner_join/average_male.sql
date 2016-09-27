SELECT * 
FROM `employees`
JOIN salaries 
on employees.emp_no = salaries.`emp_no`
WHERE gender = 'M';
/* This was first time */

SELECT ROUND(AVG(salary), 2)
FROM `employees`
JOIN salaries 
on employees.emp_no = salaries.`emp_no`
WHERE gender = 'M';
/* 63614.77 */
