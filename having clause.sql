SELECT * FROM sqlpractice1.employee;
-- Having clause
-- having clause was added to Sql because where clause can not work with aggregate function
-- where count (empid)>3-->is not allowed in having clause
-- having count(empid)>3-->is allow
-- having avg(salary)L.25000 -->is allow


-- Query--count totalno.of employee greater than 1 in country
select country ,count(empid) as 'total emp'
from employee
group by country
having count(empid)>1;

-- avg age>30
select  country ,avg(age) as 'avg age'
from employee
group by country
having avg(age)>30;

-- avg(age)<30
select  country ,avg(age) as 'avg age'
from employee
group by country
having avg(age)<30;

-- count  min(age)<30

select age,count(empid) as 'count'
from employee
group by age
having min(age)<30;


-- avg(salary)<30000

select age,count(empid) as 'count'
from employee
group by age
having avg(salary)>30000;

--
select country ,count(empid) as 'count'
from employee
group by country 
having country in('india','Qatar','Uk')
order by count(empid);
 




