SELECT * FROM sqlpractice1.employee;
-- update --modify existing table
update employee set empname='pranav', emailid='pranav@gmail.com'
where empid=2
---
 update employee set age=24 where empid=5
 
 -- delete --to remove the data

delete from employee where deptid=123
delete from employee where empid=13
delete from employee where country='chin'