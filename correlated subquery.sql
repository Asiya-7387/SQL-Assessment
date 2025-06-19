# correlated subquery-->
-- A correlated subquery is subquery that uses values from the outer query 
-- and can not be executed independently.

-- 1] dependency- depend on a value from the outer query
-- 2] execution- executes row by row
-- 3] when to use- filter,comparisons,group by or for each row
-- 4] performance- slower than subquery

-- Q] get the employee who earn more than avg salary of their department

select * from employee e 
where salary>(select avg(salary) from employee,department d where d.deptid=e.deptid);

-- Q 2]
-- list the department where atleast one employee is working & whose age is <27
select * from department d 
where exists(select 1 from employee e where e.deptid=d.deptid and e.age<27);

-- # Q 3]employee earning more than salary of all others in the same dept
   select * from employee e
   where e.salary>All( select salary from employee where deptid=e.deptid
   and empid<> e.empid);
    
    select * from employee where deptid=123;
    
    # Q 4] get employee details whose salary is highest than the max in their dept
  select * from employee e where salary<(select max(salary) from employee where deptid=e.deptid);  
   
   