create database HOSPITAL;

create  table patients
(
 patient_id int,
 first_name varchar(30),
 last_name varchar(30),
 gender char,
 birthdate date,
 city varchar(30),
 province_id char(2),
 allergies varchar(80),
 height decimal,
 weight decimal,
 constraint pk_patient primary  key(patient_id)
 );
drop table patients;
delete from patients where first_name='MOHINI';
insert into patients values(1,'soham','kanade','m','1998-03-12','pune',11,'penicillin',145,40);
insert into patients values(2,'ajinkya','mane','m','2000-05-17','NAGAR',12,'NULL',145,40);
insert into patients values(3,'MOHINI','zende','f','1997-04-18','Delhi',13,'egg',165,50);
insert into patients values(4,'amit','sharma','m','1992-09-7','Nagpur',14,'Dust',159,60);
insert into patients values(5,'priya','rao','f','1993-08-26','Mumbai',13,'null',178,65);
insert into patients values(6,'isha','desai','f','2000-04-25','pune',12,'NKA',122,50);
insert into patients values(7,'POOJA','MORE','F','1998-04-30','Delhi',13,'MORPHINE',150,50);
insert into patients values(8,'TANVI','WARMA','F','2020-04-18','PUNE',14,'PENICILLIN',110,30);
insert into patients values(9,'Akashay','navale','m','1998-03-02','Delhi',15,'Morphime',165,55);
insert into patients values(10,'raj','kumar','m','2020-08-20','nagpur',14,'null',100,30);


create table doctor
(
doctorid int primary key,
firstname varchar(30),
lastname varchar(30),
speciality varchar(30)
);

insert into doctor values(111,'Dr.sayma','chaughule','medicine');
insert into doctor values(112,'Dr.sudesh','pawar','neurology');
insert into doctor values(113,'Dr.pallavi','palve','cardiology');
insert into doctor values(114,'Dr.sudhir','tambe','orthopedics');
insert into doctor values(115,'Dr.santosh','ballal','homeopathic');
insert into doctor values(116,'Dr.arti','bandiwan','medicine');

create table admissions
(
  patientid int,
  admission date,
  discharge date,
  diagnosis varchar(50),
  attending_doctorid int
  );
  
  insert into admissions values(1,'2024-03-12','2024-03-20','flu',111);
  insert into admissions values(2,'2025-03-12','2025-03-20','dengue',116);
  insert into admissions values(3,'2020-09-20','2024-10-02','chest pain',113);
  insert into admissions values(4,'2024-12-08','2024-12-20','flu',111);
  insert into admissions values(5,'2020-11-11','2020-11-29','dengue',116);
  insert into admissions values(6,'2022-06-10','2022-006-28','kidney stone',114);
  insert into admissions values(7,'2024-03-12','2024-03-20','headche',112);
  insert into admissions values(8,'2025-06-17','2025-06-25','hand pain',112);
  insert into admissions values(9,'2025-04-12','2024-04-16','skin problrm',115);
  insert into admissions values(10,'2023-02-16','2023-03-05','flu',116);
  insert into admissions values(1,'2024-03-11','2024-03-20','dengue',111);

# 1].Show the first name, last name and gender of patients who’s gender is ‘M’
    select first_name,last_name 
    from patients 
    where gender='M';

# 2].Show the first name & last name of patients who does not have any allergies
     select first_name,last_name
     from patients 
     where allergies='NULL';
     
#3.	Show the patients details that start with letter  ‘A’
    select first_name 
    from patients 
    where first_name like 'a%';
    
#4.	Show the patients details that height range 100 to 150
     select * 
     from patients
     where height between 100 and 150;
     
#5.	Update the patient table for the allergies column. Replace ‘NKA’ where allergies is null
  update patients 
  set allergies='NKA'
  WHERE allergies='Null';
  
#6.	Show how many patients have birth year is 2020
    select count(*) as 'total patient' 
    from patients 
    where year(birthdate)=2020;
    
#7.	Show the patients details who have greatest height
   select * 
   from patients
   where height=(select max(height)from patients);

#8.	Show the total amount of male patients and the total amount of female patients in the patients table.
     select gender ,count(*)as 'total patient' 
     from patients
     group by gender;
     
#9.	Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. Show results ordered ascending by allergies then by first_name then by last_name.
  select first_name,last_name,allergies
  from patients
  where allergies in ('penicillin','Morphine')
  order by  allergies,first_name,last_name;
    
#10.	Show first_name, last_name, and the total number of admissions attended for each doctor.Every admission has been attended by a doctor.
       select d.firstname, d.lastname,  count(a.patientid)as 'total admission'
       from doctor d
       inner join admissions a on d.doctorid=attending_doctorid
       group by d.doctorid,d.firstname,d.lastname;
       
#11.	For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
       select concat(p.first_name,' ',p.last_name) as "patient's full name",a.diagnosis,concat(d.firstname,' ',d.lastname) as "doctors full name",d.speciality
       from admissions a
       inner join patients p on a.patientid=p.patient_id
       inner join doctor d on a.attending_doctorid=d.doctorid;
       
       
   














