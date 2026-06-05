use sql_practice;
select * from employees;
select count(*) from employees;
SELECT COUNT(city)
FROM employees;
select sum(salary) from employees;
select avg(salary) from employees;
select round(avg(salary),2) from employees;
select round(avg(salary),0) from employees;
select max(salary),emp_name from employees;
select salary,emp_name from employees where salary= (select max(salary) from employees);
select salary,emp_name from employees where salary= (select min(salary) from employees);
select floor(12.5);
select ceil(12.5);
