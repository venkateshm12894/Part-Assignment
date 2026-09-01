CREATE DATABASE Assignment;
USE Assignment;


CREATE TABLE Departments (
Department_id Int UNIQUE PRIMARY KEY,
Department_name Varchar(40)
) ;

insert into Departments (Department_Id, Department_name)
values (1501, "Human Resoure"),
(1502, "Finance"),
(1503, "Corporate"),
(1504, "Insurance"),
(1505, "IT");


CREATE TABLE Location (
Location_id Int UNIQUE PRIMARY KEY,
Location_name Varchar(40)
) ;

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


INSERT INTO Employees (Employee_name, Gender, Age, Hire_date, Designation, Salary, Department)
values ("Raghav", "Male", 24, "2018-08-05", "Analyst", 25000.00, "Finance"),
("Meera", "Female", 26, "2018-10-11", "Senior Analyst", 30000.00, "Finance"),
("Shiva", "Male", 30, "2018-02-10", "Manager", 40000.00, "Finance"),
("Karthick", "Male", 32, "2018-06-12", "Data analyst", 50000.00, "Human Resoure"),
("Ram", "Male", 34, "2018-03-09", "Zone General Manager", 70000.00, "Corporate"),
("Reshma", "Female", 23, "2020-08-07", "Analyst", 26000.00, "IT"),
("Alice", "Female", 26, "2021-10-11", "Analyst", 29000.00, "Insurance");

## Rank Employee Based on Salary

Select
Employee_name,
Salary,
RANK() OVER(ORDER BY Salary) Employee_Rank
FROM Employees;

## Rank of employee within Each department usisng Dense Rank
Select
Employee_name,
Salary,
Department,
DENSE_RANK() OVER(PARTITION BY Department ORDER BY Salary) Rank_status
FROM Employees;

## Running total salary by Department

Select Employee_name, Department,
SUM(Salary) OVER (PARTITION BY Department ORDER BY salary) As Running_total
FROM Employees;













