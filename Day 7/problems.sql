use sql_interview_practice;
select dept_name,sum(salary) from employees e join departments d on e.dept_id=d.dept_id group by dept_name;
select dept_name,avg(salary) from employees e join departments d on e.dept_id=d.dept_id group by dept_name having avg(salary) > 50000;

select emp_name,dept_name,salary from employees e join departments d on e.dept_id=d.dept_id where salary=(select max(salary) from employees where dept_id = e.dept_id);

SELECT e.emp_name,
       d.dept_name,
       e.salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);

select dept_name,count(emp_id) from employees e left join departments d on e.dept_id = d.dept_id group by dept_name;

select emp_name from employees e join departments d on d.dept_id = e.dept_id where salary>(select max(salary) from employees e join departments d on d.dept_id = e.dept_id where dept_name = "HR");

select dept_name,count(*) from employees e join departments d on d.dept_id = e.dept_id group by dept_name having count(*) >= 2;

select emp_name,dept_name,salary from employees e join departments d on d.dept_id = e.dept_id where salary=(select max(salary) from employees);

select dept_name, sum(salary) from employees e join departments d on d.dept_id = e.dept_id group by dept_name having sum(salary) > 100000;

select emp_name,dept_name,salary from employees e join departments d on d.dept_id = e.dept_id where salary=(select max(salary) from employees where dept_id = e.dept_id ) ;

select dept_name,avg(salary) from employees e join departments d on d.dept_id = e.dept_id group by dept_name order by avg(salary) desc limit 1;

INSERT INTO departments VALUES (5, 'Marketing');

select dept_name,count(emp_name) from departments d left join employees e on d.dept_id = e.dept_id group by dept_name;

select dept_name from departments d left join employees e on d.dept_id = e.dept_id group by dept_name having count(emp_name)=0;

SELECT emp_name,
       dept_name
FROM employees e
JOIN departments d
ON d.dept_id = e.dept_id
WHERE e.dept_id = (
    SELECT dept_id
    FROM employees
    GROUP BY dept_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);

select dept_name,count(emp_name) 
from employees e 
join departments d 
on d.dept_id=e.dept_id 
group by dept_name 
having count(emp_name)=(
							select count(emp_name) 
                            from employees 
                            group by dept_id 
                            order by count(emp_name) 
                            desc limit 1);
                            
select emp_name,dept_name,salary 
from employees e 
join departments d 
on d.dept_id=e.dept_id  
where salary<
			(select avg(salary) 
            from employees 
            where dept_id=e.dept_id);

SELECT ROW_NUMBER() OVER (
           ORDER BY salary DESC
       ) AS row_num,emp_name,
       salary
FROM employees;


SELECT emp_name,
       dept_id,
       salary,
       ROW_NUMBER() OVER(
           PARTITION BY dept_id
           ORDER BY salary DESC
       ) AS rank_no
FROM employees;

SELECT emp_name,
       salary,
       ROW_NUMBER() OVER(
           ORDER BY salary DESC
       ) AS rn
FROM employees;

select emp_name,salary, 
				row_number() over(order by salary desc)
                as row_num from employees;
                
select emp_name,salary, rank() over(order by salary desc) as rank_num from employees;

select emp_name,salary,rank() over(partition by dept_id order by salary desc) as rank_no from employees;

select * from( select emp_name,salary,dept_id,row_number() over(partition by dept_id order by salary desc)as rn from employees)t where rn=1; 

SELECT *
FROM (
    SELECT emp_name,
           dept_id,
           salary,
           ROW_NUMBER() OVER (
               PARTITION BY dept_id
               ORDER BY salary DESC
           ) AS rn
    FROM employees
) t
WHERE rn = 1;

select * 
from 
	(select emp_name,
			dept_id,
			row_number() over(
								partition by dept_id 
                                order by salary desc
                                ) as rn 
                                from employees)t
                                where rn=2;
select emp_name,salary,dense_rank() over(order by salary) as company_salary_rank from employees;

select emp_name,dept_id,salary, avg(salary) over(partition by dept_id) as department_average_salary from employees;

select emp_name,dept_id,salary,max(salary) 
over(partition by dept_id) as department_max_salary from employees;
