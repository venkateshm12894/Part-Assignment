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
FOREIGN KEY (Department_id) REFERENCES Departments(Department_id),
FOREIGN KEY (Location_Id) REFERENCES Location(Location_id)
) ;


INSERT INTO Employees (Employee_name, Gender, Age, Hire_date, Designation, Salary, Department_id)
values ("Raghav", "Male", 24, "2023-08-05", "Junior Associate", 25000.00, 1501),
("Meera", "Female", 26, "2022-10-11", "Senior Associate", 30000.00, 1502),
("Shiva", "Male", 30, "2021-02-10", "Manager", 40000.00, 1503),
("Karthick", "Male", 32, "2020-06-12", NULL, 50000.00, 1504),
("Ram", "Male", 34, "2019-03-09", "Zone General Manager", 70000.00, 1505);

Select Employee_Id, Employee_name, Gender, age, Designation, Salary From Employees
Where Designation IS NULL;

Update Employees
Set Designation = "Data Scientist"
Where Employee_Id = 4;

select * from Employees;

SELECT DISTINCT Employee_name, Designation, Salary
FROM Employees;

SELECT Age As Employee_age FROM Employees;
SELECT Salary As Employee_salary FROM Employees;

select * FROM employees 
Where (Salary > 50000) AND (Hire_date < "2023-08-10");














