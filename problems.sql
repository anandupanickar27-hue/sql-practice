CREATE DATABASE sql_interview_practice;

USE sql_interview_practice;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30)
);

INSERT INTO departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Sales'),
(4,'Finance');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    city VARCHAR(30),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES
(101,'Anand',50000,'Kochi',1),
(102,'Rahul',35000,'Palakkad',2),
(103,'Sneha',60000,'Thrissur',1),
(104,'Arjun',45000,'Kozhikode',3),
(105,'Meera',40000,'Kochi',2),
(106,'Vishnu',70000,'Palakkad',1),
(107,'Neha',38000,'Thrissur',3),
(108,'Akhil',55000,'Kochi',1),
(109,'Rohan',42000,'Kannur',4),
(110,'Diya',65000,'Kochi',4);

SELECT * FROM departments;

SELECT * FROM employees;

select emp_name,dept_name
from employees e join departments d on d.dept_id=e.dept_id;

SELECT dept_name,count(emp_name) as Count from employees e join departments d on e.dept_id=d.dept_id group by dept_name;

select dept_name from departments d join employees e on e.dept_id=d.dept_id group by dept_name having avg(salary) > 50000;

select emp_name,salary,dept_name from departments d join employees e on e.dept_id=d.dept_id where salary > (select avg(salary) from employees);

select dept_name,max(salary) 
from departments d 
join employees e 
on e.dept_id=d.dept_id 
group by dept_name; 

select emp_name
from employees e join departments d on e.dept_id=d.dept_id where d.dept_id = (select dept_id from departments where dept_name="IT");

select emp_name,salary from employees where salary < (select max(salary) from employees) order by salary desc limit 1;

select dept_name from employees e join departments d on e.dept_id=d.dept_id group by e.dept_id having count(*)>2;