CREATE DATABASE Assignment;
USE Assignment;

CREATE TABLE Employees (
Employee_id Int AUTO_INCREMENT UNIQUE PRIMARY KEY,
Employee_name Varchar(40),
Gender Varchar(10),
Age Int,
Hire_date Date,
Designation Varchar(20),
Salary Decimal(10,2),
Department_id int,
Department Varchar(20),
Location Varchar(10)
);


INSERT INTO Employees (Employee_name, Gender, Age, Hire_date, Designation, Salary, Department_id, Department, Location)
values ("Raghav", "Male", 24, "2018-08-05", "Analyst", 25000.00, 1501, "Finance", "Chennai"),
("Meera", "Female", 26, "2018-10-11", "Senior Analyst", 30000.00, 1502, "Finance", "Chennai"),
("Shiva", "Male", 30, "2018-02-10", "Manager", 40000.00, 1503, " Human Resource", "Chennai"),
("Karthick", "Male", 32, "2018-06-12", "Data analyst", 50000.00, 1504, "IT", "Bangalore"),
("Ram", "Male", 34, "2018-03-09", "Zone General Manager", 70000.00, 1505, "Insurance", "Bangalore"),
("Reshma", "Female", 23, "2020-08-07", "Analyst", 25000.00, 1506, "Finance", "Mumbai"),
("Alice", "Female", 26, "2021-10-11", "Analyst", 29000.00, 1507, "Finance", "Mumbai");

## ORDER BY

Select * From Employees
ORDER BY Department_id;

Select * From  Employees
ORDER BY Salary Desc;

##LIMIT

Select * from Employees
Where Hire_date > 2018
LIMIT 5;

## Aggregate Funtions

Select SUM(Salary) From Employees;

Select MIN(Age) From Employees;

## GROUP BY

SELECT Location, Max(Salary) From Employees
GROUP BY Location;

Select Designation, AVG(Salary) As Analyst_Salary From Employees
Where Designation = "Analyst"
GROUP BY Designation;

## HAVING

Select Department, Count(Employee_name) As Employee_count From Employees
GROUP BY Department Having Employee_Count < 3;

Select Location, ROUND(Avg(Age), 0) AS Avg_Female_Age From Employees
Where Gender = "Female"
GROUP BY Location;




