SELECT * FROM sqlpractice1.employee;
-- SQL STRING FUNCTION

-- 1] length of string-->count the character in string
select length('mysql');
select empname,length(empname) as 'length' from employee;

-- 2] concat -->is used to concatenates(join two values) in string
select concat('Hello','All');
select concat(empname,'',age) from employee;

-- 3]upper--> to use all character in uppercase
select upper(empname) as 'Name' from employee;

-- 4] lower--> to use all character in lowercase
select lower(empname) as 'Name' from employee;

-- 5] substring-- slicing of string
select substring('mysqldatabase',6);-- skip first 5 letter output->database
select substring('mysqldatabase',6,4);

-- 6] left-->select left word
select left('mysql',2)as 'left' ;  -- output-->my

-- 7] right-->select right word
select right('mysql',3); -- > output-->sql

-- 8]TRIM,LTRIM,RTRIM--> remove the leading & trailing spaces

-- TRIM()---> BOTH SPACES WILL BE REMOVED
select TRIM('  Hello   ');

-- LTRIM()-->ONLY LEFT SIDE  SPACES WILL BE REMOVED /LEADING
select LTRIM('   Hello');

-- RTRIM()--->only trailing /right side spaces will be removed
select RTRIM('Hello   ');

-- 9] replace-->replace the oldstring into newstring
select replace('13-06-2025','-','/');

-- 10] reverse --> reverse the string(word)
select reverse('mysql');

-- 11] ASCII(AMERICAN STANDARD CODE FOR INFORMATION INTERCHANGE)
-- ASCII keyword support character A to Z ,a to z and special symbol 

select ASCII('A');
select ASCII('#');

select char(65);  -- >Blob

-- 12] cast-->convert one datatype value to another
select cast('2025-06-13' as datetime);
select cast(123 as varchar(20));

-- isnull-->will work on ms sql server & oracle

--  13] ifnull
 select empname , ifnull(country,'Not Given') as 'country' from employee;



























