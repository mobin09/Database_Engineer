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

insert into Persons(personId, personanme, address,city)
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





