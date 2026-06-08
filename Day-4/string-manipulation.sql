select concat("hello" ,' ',"world");
use sql_practice;

select concat(emp_name," works in ",department) from employees;

select emp_name,length(emp_name) from employees;

select upper(emp_name) from employees;

select lower(emp_name) from employees;

select substring(emp_name,1,3) from employees;

select left(emp_name,4) from employees;
select right(emp_name,4) from employees;

select trim("  I AM BATMAN   ")