SELECT DISTINCT dept_emp.emp_no
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE gender = "F" AND dept_no = "d004";