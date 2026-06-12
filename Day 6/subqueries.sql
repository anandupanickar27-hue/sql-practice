use sql_practice;
select emp_name, salary from employees where salary > ( select avg(salary) from employees);
select emp_name, salary from employees where salary = ( select max(salary) from employees);
select emp_name ,dept_id from employees where dept_id not in (select dept_id from department);
select emp_name ,dept_id from employees where dept_id in (select dept_id from department);
select emp_name ,salary from employees where salary not in ( select max(salary) from employees) order by salary desc limit 1; 

