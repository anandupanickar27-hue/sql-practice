use sql_practice;
select emp_name,salary,
			case when salary>60000 then "high"
            else "normal"
            end as salar_category from employees;
            
SELECT emp_name,
       salary,
       CASE
           WHEN salary >= 60000 THEN 'A'
           WHEN salary >= 50000 THEN 'B'
           WHEN salary >= 40000 THEN 'C'
           ELSE 'D'
       END AS grade
FROM employees;