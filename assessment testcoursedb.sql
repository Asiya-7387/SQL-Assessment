SELECT * FROM testcoursedb.departments;
# Aggregate:

#  Find the total department in employee table
select count(distinct department_id) as 'total department' from employees;

# find the max salary
select max(salary) as 'max salary' from employees;

# find the min salary 
select min(salary) as 'min salary' from employees;

#  find the total salary 
select  sum(salary) as 'total salary' from employees;

# find the avg salary 
select avg(salary) as 'avg salary' from employees;


-- use testdb;

 # 1] Find the total employees in each department
    select department_id,count(*) from employees group by  department_id;
    
   SELECT * FROM testcoursedb.departments;
 # 2] Find the total department in each location
    select LOCATION_ID,count(department_id) as 'total department' from departments group by LOCATION_ID;
    select JOB_ID,count(department_id) from employees group by  JOB_ID;
    
 # 3. Find the average salary according to department
     select  department_id,avg(salary) as 'avg' from employees group by department_id;
     
 # 4. Find the max salary for each job id
     select job_id, max(salary) from employees group by job_id;
     
 # 5. Find the total salary dispursed in each department
    select department_id,sum(salary) from employees group by department_id;
  
 # 6. Find the total employees in each department where employees are greater than 5
     select department_id,count(employee_id) from employees group by department_id having count(employee_id)>5;
	
 # 7. Find the total department in each location and having a manager
    select LOCATION_ID, count(department_id) as 'total department'
    from departments
    where MANAGER_ID is  not null
    group by LOCATION_ID;
    
 # 8. Find the total department in each location and it should be greater than 2
     select  location_id,count(department_id) as 'count' 
     from departments
     group by location_id 
     having count(department_id)>2;
     
 # 9. Find the max salary for each job id and department should be 60,90,100,110
      select job_id, max(salary )  from employees where department_id in(60,90,100,110) group by job_id  ;
 
 
 
 
