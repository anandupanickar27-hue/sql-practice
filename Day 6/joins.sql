use sql_practice;
create table department(dept_id int primary key,dept_name varchar(10));
insert into department values(1,"IT");
insert into department values(2,"HR");
insert into department values(3,"Sales");
select * from department;
select * from employees;
alter table employees drop department;

alter table employees add column dept_id int; 
UPDATE employees
SET dept_id = CASE
    WHEN emp_id IN (1,3,6,8) THEN 1
    WHEN emp_id IN (2,5) THEN 2
    WHEN emp_id IN (4,7) THEN 3
END;

select emp_name,dept_name from employees e inner join department d on e.dept_id=d.dept_id; 

SELECT d.dept_name,
       MAX(e.salary) AS highest_salary
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

delete from employees where emp_name='Anand';

set sql_safe_updates = 1;

INSERT INTO employees
(emp_id, emp_name, salary, city, dept_id)
VALUES
(9, 'Rohan', 42000, 'Kochi', 4);

SELECT e.emp_name,
       d.dept_name
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id;

select emp_name,dept_name from employees e left join department d on e.dept_id= d.dept_id;

select emp_name,dept_name from employees e left join department d on e.dept_id = d.dept_id where d.dept_id is null; 

SELECT e.emp_name,
       d.dept_name
FROM employees e
LEFT JOIN department d
ON e.dept_id = d.dept_id;

SELECT e.emp_name,
       d.dept_name
FROM employees e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;

select count(emp_name),dept_name from employees e inner join department d on e.dept_id=d.dept_id group by dept_name;

select count(emp_name),dept_name from employees e inner join department d on e.dept_id=d.dept_id group by dept_name having count(emp_name)>2;
 
