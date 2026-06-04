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