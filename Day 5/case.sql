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

select emp_name,department, 
		case when department="it" then "Technical"
			when department ="hr" then "Non-technical"
            when department="sales" then "Non-technical"
            end as Category from employees;
            
