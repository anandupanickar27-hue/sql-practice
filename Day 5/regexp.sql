select * from employees where emp_name regexp '^[aeiou]';
select * from employees where emp_name regexp '[aeiou]$';
select * from employees where emp_name regexp '[hv]';