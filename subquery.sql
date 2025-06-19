# subquery--->subquery is written inside the another sql query is called subquery
 
# Q] display name of employee who eran max salary--(highest salary)

  # outer/main query 
select empname,salary from employee
where salary=(select  max(salary) from employee);
                # inner query
                
 #  Q] display name of employee who earn 2nd highest salary
 select  * from employee where salary=(
 select max(salary) from employee where  salary <>
 (select max(salary) from employee));
 
 
# using limit
# To find 2nd highest salary using limit
  select * 
  from employee 
  where salary=(select distinct salary 
                from employee
                order by salary desc
                limit  1 
                offset 1);
                
 #  Q]n th highest salary of emp
 -- to find 3rd highest salary
 select distinct salary
 from employee 
 order by salary desc 
 limit 1 offset 2;
 
 -- to find 4 th highest salary
 select distinct salary from employee order by salary desc limit 1 offset 3;
                
   --Q]
   
   select * from employee where salary=(select distinct salary from employee e1
   where 3=(select count(distinct salary) from employee e2 where e2.salary>=e1.salary));
                
 # Q] get the employee who earn more than avg salary
 
     select * from employee where salary>(select avg(salary) from employee);

# Q] show dept list & count of emp
select d.deptname,(select count(e.empid) from employee e where e.deptid=d.deptid) as 'count'
from department d;

# Q] display employee working in dept with highest average salary

select * from employee e
where e.salary=(select  max(salary) from employee where deptid=e.deptid) and e.salary>
(select avg(salary) from employee where deptid= e.deptid);

# Q] display name of employees from sales dept

select * from employee where deptid=(
select deptid from department  where deptname='SALES');

-- using join
select *
from employee e
inner  join department d on e.empid=d.deptid
where e.deptname='SALES';