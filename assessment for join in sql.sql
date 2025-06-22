# 1]. Write a query to find the addresses (location_id, street_address, city,state_province, country_name) of all the departments.
		select l.location_id,l.STREET_ADDRESS,l.city,l.state_province,c.country_name
        from locations l
        inner join  departments d on l. LOCATION_ID=d.location_id
        inner join countries c on l.country_id=c.country_id;

# 2]. Write a query to find the names (first_name, last name), department ID and name of all the employees.
        select e.first_name,e.last_name,d.department_id,d.department_name
        from employees e
        inner join departments d on e.department_id=d.department_id;
        
# 3]. Find the names (first_name, last_name), job_id, department number, and department name of the employees who work in London.
       select e.first_name,e.last_name,e.job_id,d.department_id,d.department_name
       from employees e
       inner join departments d on e.department_id=d.department_id
       inner join locations l on l.location_id=d.location_id
       where l.CITY='london';
       
# 4]. Write a query to find the employee id, name (last_name) along with their manager_id, manager name (last_name).
	
      select e.employee_id, e.last_name, e.manager_id, m.last_name AS manager_last_name
      from employees e
      left join  employees m ON e.manager_id = m.employee_id;
      
# 5]. Find the names (first_name, last_name) and hire date of the employees who were hired after 'Jones'.
       select e.employee_id, e.first_name,e.last_name,e.hire_date
       from employees e
       inner join employees m on e.hire_date>m.hire_date
       where m.last_name='Jones';

# 6]. Write a query to get the department name and number of employees in the department.
        select d.department_name,count(e.employee_id) as 'no.of employee'
        from departments d
        inner join employees e on d.department_id=e.department_id
        group by d.department_name;

# 7]. Find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90 from job history.
             select jh.employee_id,j.job_title,jh.start_date,jh.end_date,jh.department_id
             from job_history jh
             inner join jobs j on jh.job_id=j.job_id
             where jh.department_id=90;
             
# 8]. Write a query to display the department ID, department name and manager first name.
       select d.department_id,d.department_name,e.first_name as 'manager_first_name'
       from departments d
       inner join employees e on d.manager_id=e.employee_id;
       
	
# 9]. Write a query to display the department name, manager name, and city. 
      select d.department_name,e.first_name as 'manager_name',l.city
      from departments d
      inner join employees e on d.manager_id=e.employee_id
      inner join locations l on l.location_id=d.location_id;


# 10]. Write a query to display the job title and average salary of employees.

		select j.job_title,avg(e.salary) as 'average salary'
        from jobs j
        inner join employees e on j.job_id=e.job_id
        group by j.job_title;
       
# 11]. Display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
       select j.job_title,concat(e.first_name,' ',e.last_name)as 'employee_name',(e.salary-j.min_salary) as 'difference salary'
       from employees e
       inner join jobs j on e.job_id=j.job_id;
       
       
       
# 12]. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary

       select jh.*
       from job_history jh
       inner join employees e on jh.employee_id=e.employee_id
       where e.salary>10000;
       
      