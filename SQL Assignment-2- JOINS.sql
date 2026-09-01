CREATE DATABASE Assignment;
USE Assignment;


CREATE TABLE Departments (
Department_id Int UNIQUE PRIMARY KEY,
Department_name Varchar(40)
) ;

INSERT into Departments (Department_id, Department_name)
values (101, 'Insurance'),
(102, 'Human Resource'),
(103, 'Finance'),
(104, 'Corporate'),
(105, 'IT') ;


CREATE TABLE Location (
Location_id Int UNIQUE PRIMARY KEY,
Location_name Varchar(40),
Employee_id Int
) ;


INSERT INTO Location (Location_id, Location_name)
values (1, 'Chennai'),
(2, 'Delhi'),
(3, 'Mumbai'),
(4, 'Pune'),
(5, 'Bangalore') ;


CREATE TABLE Employees (
Employee_id Int AUTO_INCREMENT UNIQUE PRIMARY KEY,
Employee_name Varchar(40),
Gender Varchar(10),
Age Int,
Hire_date Date,
Designation Varchar(20),
Salary Decimal(10,2),
Department_id int,
Location_id Int,
Department Varchar(30),
FOREIGN KEY (Department_id) REFERENCES Departments(Department_id),
FOREIGN KEY (Location_Id) REFERENCES Location(Location_id)
) ;


INSERT INTO Employees (Employee_name, Gender, Designation, Salary, Department_id, Department, Location_id)
values ('Raghav', 'Male', 'Junior Analyst', 25000.00, 101, 'Insurance',1),
('Meena', 'Female', 'Junior Analyst', 26000.00, 101, 'Insurance',2),
('Krishna', 'Male', 'Senior Analyst', 30000.00, 102, 'Human Resource',3),
('Ram', 'Male', 'Assistant Manager', 45000.00, 103, 'Finance', 4),
('Karthick', 'Male', 'Manager', 50000.00, 104, 'Corporate', 5),
('Reena', 'Female', 'Senior Analyst', 35000.00, 105, 'IT', NULL) ;

## Inner JOIN

Select Employee_name, Designation, Department
FROM Employees
INNER JOIN Departments
ON Employees.Department_id = Departments.Department_id;

## LEFT JOIN

Select Department, Employee_name
FROM Employees 
LEFT JOIN Departments
ON Employees.Department_id = Departments.Department_id;

##RIGHT JOIN

Select Employee_name, Location_name
From Location
RIGHT JOIN Employees
ON Employees.Location_id = Location.Location_id;

##CROSS JOIN

Select Departments.Department_name, Location.Location_name
From Departments
CROSS JOIN Location;


CREATE TABLE Employee_Details (
Employee_id Int,
Employee_name Varchar(50),
Manager_id int
) ;

INSERT INTO Employee_Details (Employee_id, Employee_name, Manager_id)
values (101, 'Prabhu', NULL),
(102, 'Ram', 101),
(103, ' Ezhil', 102),
(104, 'Meena', 103),
(105, 'Riya', 104) ;

Select * FROM Employee_Details;



CREATE TABLE Manager_Details (
Manager_id Int,
Manager_name Varchar(30)
) ;

INSERT INTO Manager_Details (Manager_id, Manager_name)
values (101, 'Prabhu'),
(102, 'Ram'),
(103, 'Ezhil'),
(104, 'Meena'),
(105, 'Riya') ;

## SELF JOIN
Select Employee_name, Manager_name 	
FROM Employee_Details
JOIN Manager_Details
ON Employee_Details.Manager_id = Manager_Details.Manager_id ;


