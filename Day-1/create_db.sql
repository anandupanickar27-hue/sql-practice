create database sql_practice;
use sql_practice;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30)
);
INSERT INTO employees VALUES
(1,'Anand','IT',50000,'Kochi'),
(2,'Rahul','HR',35000,'Palakkad'),
(3,'Sneha','IT',60000,'Thrissur'),
(4,'Arjun','Sales',45000,'Kozhikode'),
(5,'Meera','HR',40000,'Kochi'),
(6,'Vishnu','IT',70000,'Palakkad'),
(7,'Neha','Sales',38000,'Thrissur'),
(8,'Akhil','IT',55000,'Kochi');

select * from employees;
select * from employees where department ="IT";
select * from employees where salary>50000;
select * from employees where department != "IT";
select * from employees order by salary;
select * from employees order by salary desc;
SELECT *
FROM employees
ORDER BY department, salary DESC;
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
SELECT department
FROM employees;
SELECT DISTINCT department
FROM employees;
SELECT DISTINCT city
FROM employees;
SELECT emp_name, salary
FROM employees
WHERE city = 'Kochi'
ORDER BY salary DESC;


