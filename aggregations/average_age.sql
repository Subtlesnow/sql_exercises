SELECT AVG(DATEDIFF('2016-08-04',`birth_date`)/365) 
AS aveAge 
FROM `employees`;
/* Average Age is 57.99 years old. */

SELECT ROUND(AVG(DATEDIFF(CURDATE(), `birth_date`)/365))
FROM employees
/* 58 */
