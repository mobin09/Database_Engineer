create database Testing;
commit;

show databases;

use testing;
show tables;
Create table Customers(
  CustomerID int not null AUTO_INCREMENT,
  CustomerName varchar(100) not null,
  ContactName varchar(100) ,
  Address varchar(200) not null,
  City varchar(120) not null,
  PostalCode varchar(20) not null,
  Country varchar(50) not null,
  PRIMARY KEY(CustomerID)
) ;
COMMIT;

SHOW TABLES;
DESC CUSTOMERS;
INSERT INTO CUSTOMERS(CustomerName,ContactName,Address, City, PostalCode, Country )values('Ana Trujillo Emparedados y helados','Ana Trujillo',
'Avda. de la Constitución 2222',	'México D.F.',	'05021'	, 'Mexico')
,('Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico');
rollback;
select * from customers;
select CustomerName, city from customers;

select country from customers;
select distinct country from customers;
select count(distinct country) from customers;

select * from (select distinct country from customers) as T;

INSERT INTO CUSTOMERS(CustomerName,ContactName,Address, City, PostalCode, Country )
values('Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany');

select * from customers where country = 'Germany' AND city = 'berlin';


select * from Customers;
select * from Customers where city = 'Berlin' OR city  ='Mannheim';
select * from customers order by country;
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

update Customers set CustomerName = 'Nadim Arshad', ContactName = 'Nadim', 
Address = 'Rahmat Nagar', city = 'Salempur', PostalCode = '274509', Country = 'India' where CustomerId = 3;
commit;

select * from customers;

select * from customers limit 3;

show databases;
use testing;
show tables;

create table Products(
  ProductID int not null,
  ProductName varchar(50),
  SupplierID int(50),
  CategoryID int(50),
  Unit varchar(200),
  Price float,
  primary key(ProductID)
);

show tables;

desc table products;
desc products;

ALTER table products modify column ProductID int not null auto_increment;
commit;

insert into products (ProductName, SupplierID, CategoryID, Unit, Price)
Values('Chais', 1, 1, '10 boxes x 20 bags', 18),
('Chang', 1, 1, '24 - 12 oz bottles', 19),
('Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10),
('Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22),
('Chef Anton\'s Gumbo Mix', 2,2, '36 boxes', 21.35);

select * from products;
commit;

select MIN(price) as SmallestPrice from products;
select MAX(price) as LargestPrice from products;

select count(productid) from products;

select AVG(Price) as Avergae from products;
select sum(Price) as Total from products;

use testing;
select * from products;
select * from customers;

SELECT * FROM Customers
WHERE city like 'S%' OR city like 'B%';

select * FROM customers where country not in ('India', 'Mexico', 'UK');
select * from products where price BETWEEN 10 AND 20;
select * from products where price NOT BETWEEN 10 AND 20;

select * from products order by productname;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,3);

select * from products where productname between 'chang' AND 'Chef Anton\'s Gumbo Mix' order by productname;

select productname AS 'product QNames' from products;

use testing;
select * from Customers;

select customerName, CONCAT(Address, ', ', City, ', ', postalCode, ', ', Country) AS Address FROM Customers;
select * from products;
create table Orders(
    OrderID int not null,
    CustomerID int not null,
    OrderDate date not null,
    primary key(OrderID)
);

insert into Orders 
values(10308, 2, '1996-09-18'),
(10309, 37, '1996-09-19'),
(10310, 77, '1996-09-20');

show databases;
use testing;

select * from orders;
select * from customers;

select O.OrderID,  C.CustomerName from Orders O
INNER JOIN Customers C
ON O.customerID = C.CustomerID;

select * from products;
select * from customers;
SELECT O.orderID, C.CustomerName, P.productName
from Orders O 
INNER JOIN customers C on  O.customerID = C.CustomerID
INNER JOIN products P on C.CustomerID = P.productID;

select C.customerName, p.price 
from Customers C
 CROSS JOIN products p
ON C.CustomerID = P.price;


SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID != B.CustomerID
AND A.City = B.City
ORDER BY A.City;

use testing;
show tables;
select * from customers;
select count(customerID) , country FROM customers
GROUP by country
HAVING count(customerID)> 0
ORDER BY count(customerID) asc;

show tables;

create table Employee(
   EmployeeID INT not null auto_increment,
   LastName varchar(40),
   FirstName VARCHAR(40),
   BirthDate DATE,
   Photo VARCHAR(100),
   Notes VARCHAR(5000),
   primary key(EmployeeID)
);


insert into Employee(LastName, FirstName, BirthDate, Photo, Notes)
VALUES('Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International.'),
('Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.')
;

select * from Employee;
select * from orders;
SELECT Employee.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employee ON Orders.CustomerID = Employee.EmployeeID
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 0;

use testing;

select * from employee;
select * from products;

select * from products 
where productID = ALL 
( 
  select EmployeeID from employee
 ); 

/* 
 select ALL productID, ProductName, Price
 from products where TRUE;
 
 select * into newTable from products where price>= 20;
 
 */
 
 create database hello;
 
 show databases;
 drop database hello;
 show databases;
 
 use testing;
 
 show tables;
 select * from customers;
 
 select CustomerName, contactName, city from customers; 
 
 select count(city) as count, city, customername from customers group by city;
 
 create database test;
 
 
