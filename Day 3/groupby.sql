use sql_practice;
select department, count(*) as count from employees group by department;
select department , avg(salary) from employees group by department;
select department , max(salary) from employees group by department;

select department,count(*) from employees group by department having count(emp_name)>2;
 
select department,sum(salary) from employees group by department having sum(salary)>100000;