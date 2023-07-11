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

create table CustomerDetails(
    id int not null auto_increment,
    name varchar(255) not null,
    dob date,
    primary key(id)
);

show columns from customerDetails;
desc customerDetails;
select * from customerDetails;
commit;
use bookstore;
create table students(
id int not null auto_increment,
sname varchar(255) not null,
sdob date not null,
saddress varchar(255) not null,
primary key(id)
);

alter table students
ADD (profilePic BLOB, resume longtext);
commit;

desc students;
select * from students;
select 5 +5;
select 5-5;
select 5 * 5;
select 5 / 5;
select 5 % 5;

create table employee (
id int not null auto_increment,
name varchar(255) not null,
salary int not null,
primary key(id) 
);

insert into employee( name, salary) values
('alex', 25000),
('john', 55000),
('James', 52000),
('Sam', 30000),
('Hodi', 18000),
('Kiran', 18000),
('Wat', 24000),
('Kiati', 2400);

select * from employee;
select * from employee where salary != 18000;
select * from employee where salary <> 18000;

use bookstore;
select * from employee order by name asc;
select * from employee order by salary desc;
insert into employee (name, salary) values('john', 56000);
select * from employee order by name asc, salary desc;

-- CREATING THE SCEMEA OF SHOPING CART

CREATE database shoping_cart_db;
use shoping_cart_db;
create table customers(
  customer_id int not null,
  name varchar(100),
  address varchar(255),
  email varchar(50),
  phone varchar(10),
  primary key(customer_id)
  );

create table Products(
  product_id int not null,
  name varchar(100),
  price NUMERIC(8, 2),
  description varchar(255),
  primary key(product_id)
  );
  
create table cart_order(
  orderId int not null,
  product_id int not null,
  customer_id int not null,
  quantity int,
  orderDate date,
  status varchar(100),
  primary key(orderId),
  foreign key (customer_id) references customers(customer_id),
  foreign key (product_id) references Products(product_id)
); 

use bookstore;
select * from students;
desc students;

alter table students
MODIFY resume BLOB;

select * from students;

use bookstore;

create table users(
 id int not null auto_increment,
 username varchar(20) not null,
 password varchar(20) not null,
 primary key(id)
 );
 insert into users (username, password) values
 ( 'Mobin', 'abcd123'),
 ('Nitin', 'Nitin123');
 
 select * from users;
 SELECT count(*) FROM users where username = 'Mobin' AND  password = 'abcd123';
 SELECT count(*) FROM users where username ='Mobin';-- 'AND  password ='sdnmsbfnmds';
 
 use bookstore;
 select * from users;
 
 use bookstore;
 CREATE TABLE products(
    id int not null,
    productNaame varchar(50) not null,
    price double not null,
    quantity int not null
 );
 desc products;
 
 insert into products values
 (1, "Milk", 35, 2),
 (2, "Bread", 20, 2),
 (3, "Suger", 50, 1),
 (4, "Banana", 60, 12);
 
 select * from products;
 -- SELECT id, productNaame, price, quantity from products where product id = ?;
 CALL GET_PRODUCT_DETAILS(1, @name, @price, @qnty);
 select @name, @price, @qnty;
 
SHOW GRANTS FOR 'root'@'localhost';
GRANT SELECT ON bookstore.products TO 'root'@'localhost';

SHOW GRANTS FOR 'root'@'localhost';

select name into ename from employee where id = eid;

desc employee;
select * from employee;

use bookstore;
select * from employee;
use bookstore;

CREATE TABLE ACC_DETAILS(
   ACC_NO int not null,
   NAME varchar(100) not null,
   TOTAL_BAL decimal not null,
   primary key(ACC_NO)
);

CREATE TABLE TRNS_DETAILS(
  ACC_NO INT NOT NULL,
  RECEIVED_AMOUNT_FROM INT NOT NULL,
  AMOUNT_RECEIVED DECIMAL,
  FOREIGN KEY(ACC_NO) REFERENCES ACC_DETAILS(ACC_NO)
 );
 
 insert into TRNS_DETAILS values 
 (786, 123, 500.0); 
 select * from TRNS_DETAILS;
 
 
 insert into acc_details values
 (123,'Mobin Arshad', 50000.0),
 (420, 'Nitin Kumar', 40000.0),
 (786, 'Washim Arshad', 1000000.0),
 (245, 'Mohit Kumar', 200000000.0);
 
 select * from acc_details;
 SELECT NAME, TOTAL_BAL FROM ACC_NO WHERE ACC_NO = 123; 
 
 
 
 
 
 
 
 
 
 


 
 
  








 















