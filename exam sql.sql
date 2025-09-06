

select * from dep;
select * from emp;


1. Find the average salary of employees in each
department and list the departments where the
average salary is greater than 7000.


 select avg(emp.salary),dep.department_name 
 from emp inner join dep 
 on emp.employee_id =dep.department_id
 group by dep.department_name
 having avg(emp.salary) > 7000;


2. List the employees whose first name starts with
the letter 'S'.


select * from emp
where first_name like 'S%';

3. Find the department names and the number of
employees in each department.

select dep.department_name,count(emp.employee_id)
from dep join emp 
on dep.department_id =emp.department_id
group by dep.department_name;

4. List the employees who are managers along with
their department names.


select * from dep;
select * from emp;

select concat(emp.first_name,' ',last_name)as emp_name ,dep.manager_id,dep.department_name
from  dep join emp 
on dep.department_id =emp.department_id;


5. Find all employees who do not have a manager.

select * from emp; 
select * from dep;

select   emp.employee_id, dep.department_name
FROM Emp JOIN dep 
ON emp.department_id = dep.department_id
WHERE emp.manager_id IS NULL;

6. List all employees along with their department
names. If an employee is not assigned to any
department, still include them in the result.

select * from dep;
select * from emp;

select count(emp.employee_id),dep.department_name
from emp join dep 
on emp.department_id=dep.department_id
group by dep.department_name;



7. Find all employees and their managers.

select * from emp; 
select * from dep;

select concat(emp.first_name,' ',last_name)as emp_name ,dep.manager_id
from emp join dep 
on emp.employee_id =dep.department_id;


8. List all employees who earn more than the
average salary of their department.


select emp.employee_id,emp.first_name,dep.department_name
from emp join dep 
on emp.department_id =dep.department_id
where emp.salary > (select avg(emp.salary) from emp);



9. Find the number of employees hired each year.

select *  from emp;

select count(employee_id),year(hire_date) from emp 
group by year(hire_date);

10. List all unique job IDs from the employees table along with the number of employees for each job
ID.
 
select distinct(job_id),count(employee_id)from emp
group by job_id;


11. Find the top 5 highest-paid employees and
order them by salary in descending order.

select salary,concat(first_name,' ',last_name)as emp_name from emp 
order by salary desc 
limit 5;


12. List the employees whose salary is an even
number, ordered by their salary.

select concat(first_name,' ',last_name)as emp_name,mod(salary,2)=0 as even_salry from emp;


13. Find the distinct departments in which
employees work, ordered alphabetically by
department name.

select* from dep;

select distinct(dep.department_name),concat(emp.first_name,' ',last_name)as emp_name
from emp join dep
on emp.manager_id =dep.manager_id
order by dep.department_name asc;


14. List the employees whose hire date is on an odd
day of the month, ordered by their hire date.

select * from emp;

select employee_id ,concat(first_name,' ',last_name) full_name ,job_id,hire_date from e1
 where mod(day(hire_date),2)=1 and  month(hire_date)
 order by hire_date desc;


15. List the distinct job titles in the employees table.


select distinct(job_id)from emp;
