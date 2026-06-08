use sql_practice;
select emp_name,salary,
			case when salary>60000 then "high"
            else "normal"
            end as salar_category from employees;