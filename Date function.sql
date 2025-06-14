-- Date function

SELECT * FROM sqlpractice1.employee;
-- 1] curdate()
select curdate() as 'today date'; 

-- 2] now()==output  to print date and time
select now() as 'datetime';
-- in table date & time both are stored.
-- extract date from datetime

-- 3] 
select date(now()) as 'date';
select time(now())as 'time';
select year('2025-04-23') as 'year';
select month('2025-04-23') as 'month';
select day('2025-04-23') as 'day';


-- 4] date_format()--%b -print the month
select date_format(now(),'%d-%b-%Y');-- output='14-Jun-2025'

-- 5] datediff()
-- interview question
-- find employee joining date till todays date

select datediff('2025-06-01','2025-06-14');
select datediff('2025-07-01','2025-06-13');

-- 6] interval-->time period
select date_add(curdate(),interval 15 day);
select date_add(curdate(),interval 2 month);

-- give me the sales of mobile till last week from current date
select date_sub(curdate(),interval 7 day);










