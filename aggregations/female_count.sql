SELECT SUM(`gender`)
FROM `employees`
WHERE gender = "F";
/* 780 female employees
   610 male employees
  1390 total employees */

SELECT SUM(gender) 
FROM employees
Where gender = "F"; 

/* 780 females */
