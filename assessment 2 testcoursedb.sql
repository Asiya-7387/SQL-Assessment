 -- Assignment2:
#Use testdb
SELECT * FROM testcoursedb.employees;

# 1]. Find the empid, firstname, lastname and salary of employee
   select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY 
   from employees;
   
# 2]. Find the employees in deptid 60
   select * 
   from employees
   where DEPARTMENT_ID=60;
   
# 3]. Find the employees with salary greater than 1000
  select * 
  from employees 
  where salary>10000;
  
# 4]. Find the employees whose manager id is not given
   select * 
   from employees
   where MANAGER_ID is null;
   
# 5]. find the department whose manager_id is 0
   select *
   from employees
   where MANAGER_ID=0;
   
# 6]. Find the employees with salary in range 5000 to 10000
   select * 
   from employees 
   where salary between 5000 and 10000;
   
# 7]. Find the employees who works in deparment 10,20 or50
   select * 
   from employees 
   where DEPARTMENT_ID in (10,20,50);
   
# 8].Find the employees who work in department 80 and 60  and has salary above 15000
  select * 
  from employees
  where DEPARTMENT_ID in (80,60) and salary>15000; 
  
-- Assignment:
# Like Clause
use testdb;

# 1] show the employee names starting with vowels
select FIRST_NAME 
from employees 
where FIRST_NAME like 'A%' or FIRST_NAME like 'E%';

#  2] show the employee names ending with vowels
select FIRST_NAME 
from employees 
where FIRST_NAME like '%A' or FIRST_NAME like '%E';

SELECT * FROM testcoursedb.departments;
#  3] show the department names having exactly 5 characters
    select DEPARTMENT_NAME
    from departments 
    where length(DEPARTMENT_NAME)=5;

#  4] show the employee names starting with a and having min 2 characters
    select FIRST_NAME 
    from employees 
    where FIRST_NAME like 'a%' and length(FIRST_NAME)=4;
         
#  5] show the employees names that start with a and end with r
   select FIRST_NAME
   from employees 
   where FIRST_NAME like 'a%r';
   
# Update and Delete
# 1] . Increase the salary of all employees by 10%
      update employees
      set salary=salary*0.1;
       
# 2] . Increase the salary of employees by 1000 who works in department 60
	update employees 
    set  salary= salary +1000 
    where DEPARTMENT_ID=60;
         
# 3]. Delete the employees working in 60 department -- Ensure to rollback this
    delete from employees where DEPARTMENT_ID=60;
    rollback; -- execute this if you want to undo the deletion.