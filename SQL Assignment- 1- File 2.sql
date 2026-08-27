CREATE DATABASE Dataset;  
USE Dataset;

CREATE TABLE Employees (
Emp_ID int    auto_increment unique primary key,
Employee_name varchar(100) Not Null,
Gender varchar(10) Not Null Check (Gender = "M" or "F"),
Age int Not Null Check (Age >= 18),
Hire_Date date Default (Current_Date),
Designation varchar(30),
Salary decimal(10,2),
Department_ID int,
Location_ID int,
FOREIGN KEY (Department_ID) REFERENCES Departments_Info(Department_ID),
FOREIGN KEY (Location_ID) REFERENCES Locations(Location_ID)
) auto_increment = 1001 ;


CREATE TABLE Departments_Info (                                            
Department_ID  Int         auto_increment unique Primary KEY,
Department_name varchar(100)  Not Null unique
)   auto_increment = 1001 ; 

CREATE TABLE Locations(
Location_ID Int    auto_increment unique primary key,
Location_name varchar(100) Not Null unique
);

