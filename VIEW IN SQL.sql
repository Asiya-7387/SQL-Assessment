# VIEW IN SQL
-- A view is a virtual table based on the result of sql query.
-- it does not store itself,but shows the data from real table.

-- 1] simplifies complex queries
-- 2] improve the security
-- 3] reuse frequently used queries


# Create view

create view getEmpDeptData
as
select e.*,d.deptname from employee e
inner join department d on d.deptid=e.deptid
where e.deptid=121
order by e.empname;

# call to view
select * from getEmpDeptData;

# drop the view
drop view getEmpDeptData;

# alter view

alter view getEmpDeptData
as
select e.*,d.deptname from employee e
inner join department d on d.deptid=e.deptid
where e.deptid=123
order by e.empname;
