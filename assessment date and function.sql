#Date and Time functions 
# 1]. Write a query to display the first day of the month (in datetime format) three months before the current month.  
    select date_format(date_sub(curdate(),interval 3 month),'01-%m-%Y')  as 'firstday'; 
    -- output---># firstday --->  '01-03-2025'  %b-->month name
    
    
# 2]. Write a query to display the last day of the month (in datetime format) three months before the current month.  
   select date_format(date_sub(curdate(),interval 3 month),'31-%b-%Y') as 'lastday';
   -- output-->31-Mar-2025

 SELECT * FROM testcoursedb.employees;
#3]. Write a query to get the distinct Mondays from hire_date in employees tables. 
 select distinct hire_date from employees where dayofweek(hire_date)=2;
 
 
# 4]. Write a query to get the first day of the current year. 
  select date_format(now(),'01-01-%Y') as 'date';
  # output--->date --->'01-01-2025'

# 5]. Write a query to get the last day of the current year. 
    select date_format(curdate(),'31-%12-%Y') as date;


# 6]. Write a query to calculate the age in year 
      select year(curdate())-year(HIRE_DATE) as age
      from employees;
      
# 7]. Write a query to get the current date in the following format.  Sample date : 2014-09-04   Output : September 4, 2014 
   select date_format(curdate(), '%M %e,%Y') as 'date';
    -- OUTPUT--->'June 16,2025'

   
# 8]. Write a query to get the current date in the following format.  Thursday September 2014 
     select date_format(curdate(),'%W %M %Y') as 'date';
     -- OUTPUT-->'Monday June 2025'

# 9]. Write a query to extract the year from the current date.  
      select year(curdate());
       -- output----> year--> '2025'

# 10]. Write a query to get the DATE value from a given day (number in N).  Sample days : 730677 Output : 2000-07-11  
     select date_add('0000-01-01',interval 730677 -1 day);

# 11]. Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30'  
   select FIRST_NAME,HIRE_DATE
   from employees
   where HIRE_DATE between'1987-06-01' and '1987-07-30';  


# 12]. Write a query to display the current date in the following format Sample output : Thursday 4th September 2014 00:00:00 
  select date_format(curdate(),'%W %e %M %Y  00:00:00') as date;
  # output--->date   'Monday 16 June 2025  00:00:00'

  
# 13].Write a query to display the current date in the following format.  Sample output : 05/09/2014 
      select date_format(curdate(),'%d/%m/%Y');
# output---->date_format(curdate(),'%d/%m/%Y')  '16/06/2025'

# 14].Write a query to display the current date in the following format.  Sample output : 12:00 AM Sep 5, 2014 
      select date_format(curdate(),'%l:%i %p %b %e, %Y');
      #  output--->date_format(curdate(),'%l:%i %p %b %e, %Y')  '12:00 AM Jun 16, 2025'


# 15] Write a query to get the firstname, lastname who joined in the month of June. Sample table : employees 
     select FIRST_NAME,LAST_NAME from employees where month(HIRE_DATE)=6;
     
     
# 16]. Write a query to get the years in which more than 10 employees joined.  Sample table : employees 
      select year(hire_date) 
      from employees
      group by year(hire_date)
      having count(*)>10;
      
# 17]. Write a query to get first name of employees who joined in 1987.  #Sample table : employees 
     select first_name
     from employees
     where year(hire_date)=1987;
     
     
# 18]. Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.  
#Sample table : departments 
         select d.DEPARTMENT_NAME,e.FIRST_NAME as 'manager name' ,e.salary
         from departments d
         inner join employees e on d.manager_id=e.employee_id
         where year(curdate())-year(e.hire_date)>5;
         
# 19]. Write a query to get employee ID, last name, and date of first salary of the employees.   Sample table : employees 
       select   EMPLOYEE_ID, LAST_NAME,min(SALARY) AS 'date of first salary'
       from employees
       group by  EMPLOYEE_ID, LAST_NAME;
       
# 20]. Write a query to get first name, hire date and experience of the employees.  Sample table : employees 
	select year(curdate())-year(HIRE_DATE) as 'experience',FIRST_NAME,HIRE_DATE
        from employees;
