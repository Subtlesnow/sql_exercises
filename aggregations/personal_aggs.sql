/* 1. Find average salary of Senior Engineer. */
SELECT ROUND(AVG(salary),2)
FROM titles
JOIN salaries
ON titles.emp_no = salaries.emp_no
WHERE title =  "Senior Engineer";
/* 60543.22 */

/* 2. Find average time employee holds position. */
SELECT ROUND(AVG(DATEDIFF("2016-08-05", from_date)/365), 1)
FROM titles;
/* Answer is 22.5 years. */

/* 3. Find average age of female employees. */
SELECT ROUND(AVG(DATEDIFF('2016-08-05',`birth_date`)/365),1)
FROM employees
WHERE gender = "F";
/* Answer = 58.1 */

/* 4. Find average age of male employees. */
SELECT ROUND(AVG(DATEDIFF('2016-08-05',`birth_date`)/365), 1)
FROM employees
WHERE gender = "M";
/* Answer = 58.0 */

/* 5. Determine average salary for people with a last name that start with "R". */
SELECT ROUND(AVG(salary),2)
From employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE last_name LIKE "R%";
/* 63491.79 */

/* 6. Find all female employees who are "staff" that make over 65,000. */
SELECT DISTINCT COUNT(*)
FROM titles
JOIN employees ON titles.emp_no = employees.emp_no
WHERE title = "staff" AND gender = "F";
/* 42854 */

/* 7. Find how many males work in the Research Dept. */
SELECT COUNT(gender)
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE dept_name = "Research" AND gender = "M";
/* total males = 12687 */

/* 8. Find the number of female with first name that starts with "L" and was born before 1960. */
SELECT COUNT(*)
FROM `employees`
WHERE gender = "F" and birth_date < "1960-01-01" AND first_name LIKE "L%";
/* Answer is 2058 */

/* 9. Find the name of the oldest male who has a "Senior" title. */
SELECT *
FROM employees
JOIN titles
ON employees.emp_no = titles.emp_no
WHERE gender = "M";
ORDER BY birth_date ASC AND title LIKE "%Senior%";
/* Answer is Georgi Facello, born 1953-09-02, Senior Engineer */

/* 10. Find the name of the last hired Female Technique Leader. */
SELECT * 
FROM titles
JOIN employees
ON titles.emp_no = employees.emp_no
WHERE gender = "F" AND title = "Technique Leader"
ORDER BY hire_date ASC;
/* Answer is Krassimir Wegerle */




