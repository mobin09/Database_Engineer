show databases;
create database DatabaseEngineers;
use DatabaseEngineers;
show databases;
drop database datbaseengineers;
commit;
show databases;
SELECT CURRENT_USER();
-- backup command need to understand
create table Persons(
   personId int,
   personanme varchar(255),
   address varchar(255),
   city varchar(255)
);
commit;
desc Persons;
create table PersonsBackup as select * from Persons;
commit;
desc PersonsBackup;

insert into Persons(personId, personanme, local_address,city)
values(100, "Mobin Arshad", "Rahmat Nagar", "Salempur");

select * from Persons;

ALTER table Persons
RENAME COLUMN address to LOCAL_ADDRESS;

use databaseengineers;
create table Laptops(
  serialNo int NOT NULL,
  companyname varchar(255) NOT NULL,
  size int NOT NULL,
  price int NOT NULL,
  color varchar(255),
  reviewedby varchar(255)
);

desc Laptops;
ALTER TABLE Laptops 
MODIFY reviewedby varchar(255) NOT NULL;

desc Laptops;
use databaseengineers;
CREATE TABLE students
(id int, name varchar(100), course varchar(50), address varchar(255) );
insert into students(id, name, course, address)
values(101, "Mobin Arshad", "B-tech", "Rahmat Nagar"),
	(102, "Nitin Kumar", "B-tech", "Gajipur"),
    (103, "Mohit Kumar", "B-tech", "New Delhi"),
    (104, "Aman Alam", "B-tech", "Gajipur");
show columns from students;
select * from students;

insert into students(id, name, course, address)
value(106, "Angad Yadav", "B-tech", "Kanpur UP");
select * from students;

CREATE DATABASE bookstore;
use bookstore;

CREATE TABLE customers(
     customerID int NOT NULL auto_increment,
     customerName varchar(255) NOT NULL,
     customerNumber int NOT NULL,
     customerAddress varchar(255),
     primary key(customerID)
     );

show columns from customers;
alter table customers
add cGender varchar(10);

show columns from customers;
alter table customers
add( country varchar(50), nationality varchar(70));

Alter table customers
drop column nationality;

show columns from customers;
select * from customers;

alter table customers
MODIFY column customernumber varchar(13) not null;
commit;

insert into customers 
(customerName, customernumber, customerAddress, cGender, country) 
values
("Javed", "88xxxxxxx", "Barely", "M", "India"),
("Anuj Kumar", "6786012345", "Barely", "M", "India");

select * from customers;

update customers set customerName = "Mohit Kumar Singh", 
customerAddress = "New Delhi Dwarka" 
where customerID = 2;
commit;














