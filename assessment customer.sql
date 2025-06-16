create table customer
(
  custid int,
  custname varchar(20),
  city varchar(20),
  postalcode bigint,
  country varchar(20)
  );
  
  insert into customer values(1,'Amol','pune',345678,'india');
  insert into customer values(2,'Rohan','berlin',995678,'USA');
  insert into customer values(3,'Suraj','London',785678,'Japan');
  insert into customer values(4,'Ravi','Delhi',675678,'Shrilanka');
  insert into customer values(5,'Amar','berlin',98565678,'india');
  insert into customer values(6,'shrija','delhi',345678,'germeny');
  insert into customer values(7,'pooja','pune',121110,'japan');
  insert into customer values(8,'Amu','mumbai',345678,'india');
  
  --  product table
  
  SELECT * FROM sqlpractice1.product;
  insert into product values(1,'Bag',100);
  insert into product values(2,'Nosepin',30);
  insert into product values(3,'chain',80);
  insert into product values(4,'ring',150);
  insert into product values(5,'rubber',30);
  insert into product values(6,'Ankelt',100);
  insert into product values(7,'Bangles',50);
  insert into product values(8,'earrings',50);
  insert into product values(9,'Bracelet',70);
  insert into product values(10,'cluther',40);
  
  -- Q-1] Write a statement that will select the City column from the Customers table
  select city 
  from customer;
  
  -- Q 2] Select all the different values from the Country column in the Customers table.
  select distinct country 
  from customer;
  
  -- Q 3] Select all records where the City column has the value "London
  Select *
  from customer
  where city="London";
  
  -- Q 4] Use the NOT keyword to select all records where City is NOT "Berlin".
  select *
  from customer 
  where not city="Berlin";
  
  -- Q 5] Select all records where the CustomerID column has the value 23. 
  select *
  from customer 
  where custid=3;

-- Q 6] Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * 
from customer 
where city="pune" and postalcode= 121110; 

-- 	Q 7] Select all records where the City column has the value 'Berlin' or 'London'.
 select * 
 from customer
 where city="berlin" or  city="London";
 
 -- Q 8] Select all records from the Customers table, sort the result alphabetically by the column City.
  select * 
  from customer
  order by city;
  
 -- Q 9] Select all records from the Customers table, sort the result reversed alphabetically by the column City.
 select * 
 from customer 
 order by city desc;
 
 -- Q 10] Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
 select * 
 from customer 
 order by country,city;
 
 -- Q 11] Select all records from the Customers where the PostalCode column is empty.
    select  *
    from customer 
    where  postalcode is null; 
  
  -- Q 12] Select all records from the Customers where the PostalCode column is NOT empty.
    select * 
    from customer 
    where postalcode is not null ; 
 
-- Q 13] Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
    update  customer 
    set city='Oslo' 
    where country='USA';
 
 --  Q 14] Delete all the records from the Customers table where the Country value is 'Norway'.
     delete  from customer 
     where country='germeny'; 
 
 -- Q 15] Use the MIN function to select the record with the smallest value of the Price column.
    select min(price)
    from product;
 
 -- Q 16] Use an SQL function to select the record with the highest value of the Price column.
    select max(price) as 'price'
    from product;
 
-- Q 17] Use the correct function to return the number of records that have the Price value set to 20
    select count(*) 
    from product 
    where price=80;

-- Q 18] Use an SQL function to calculate the average price of all products.
       select avg(price) as 'price' 
       from product;

-- Q 19] Use an SQL function to calculate the sum of all the Price column values in the Products table
      select sum(price) as 'sum'
      from product;

-- Q 20] Select all records where the value of the City column starts with the letter "a".
     select * 
     from customer 
     where city like 'p%';

-- Q 21] Select all records where the value of the City column ends with the letter "a".
     select * 
     from customer 
     where city like '%o';
 
 -- Q 22] Select all records where the value of the City column contains the letter "a".
      select * 
      from customer 
      where city like '%a%';

-- Q 23] Select all records where the value of the City column starts with letter "a" and ends with the letter "b"
     select *
     from customer 
     where city like 'p%i';
   
-- Q 24]   Select all records where the value of the City column does NOT start with the letter "a".
     select * 
     from customer 
     where city not like 'p%';

-- Q 25] Select all records where the second letter of the City is an "a".
    select * 
    from customer 
    where city like '_a%';

-- Q 26] Select all records where the first letter of the City is an "a" or a "c" or an "s".
     Select * 
     from customer
     where city like 'N%' or city like 'D%' or city like 'k%';

-- Q 27] Select all records where the first letter of the City starts with anything from an "a" to an "f".
   select * 
   from customer
   where city like '[af]%';

-- Q 28] Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
    SELECT *
    FROM customer
    WHERE city LIKE '[!pmn]%';

-- Q 29] Use the IN operator to select all the records where the Country is either "Norway" or "France".
       select *
       from customer 
       where country in('india','USA'); 

-- Q 30] Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
      select * 
      from customer 
      where country not in('india','USA'); 

-- Q31] use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
       select * 
       from product 
       where price between 30 and 80;
       
-- Q 32] Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
       select * 
       from product
       where price not between 30 and 80;
       
-- Q 33] Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
      select * 
      from product 
      where name between 'Bag' and 'ring';
      
-- Q 34] When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
    select *, postalcode as 'Pno' 
    from customer ;
    
-- Q 35] When displaying the Customers table, refer to the table as Consumers instead of Customers.
  select * 
  from customer as 'consumer';
 
-- Q 36] List the number of customers in each country.
      select country ,count(custid )as 'count'
      from  customer 
      group by country;

-- Q 37] List the number of customers in each country, ordered by the country with the most customers first.
    select country,count(custid)as 'count'
    from customer
    group by country
    order by count(custid)  ;

-- Q 38] Write the correct SQL statement to create a new database called testDB.
create database testDB;

-- Q 39] Write the correct SQL statement to delete a database named testDB
drop  database testDB;

-- Q 40]Add a column of type DATE called Birthday in Persons table
create table person
(
id int,
name varchar(20),
address varchar(40),
mobno int
);
alter table person add birthaday date;


-- Q 41]Delete the column Birthday from the Persons table
alter table person drop  column birthaday;