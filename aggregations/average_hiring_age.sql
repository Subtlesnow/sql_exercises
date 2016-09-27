SELECT avg(DATEDIFF(`hire_date`,`birth_date`)/365) 
FROM `employees`;
/*Average Hiring Age is 31.40 */

SELECT Round(AVG(DATEDIFF(hire_date, `birth_date`)/365))
FROM employees
/* 31 */