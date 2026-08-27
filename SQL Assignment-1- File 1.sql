CREATE DATABASE Dataset;                                             ## Created Databse called Dataset
USE Dataset;


## DDL Commands
## 1. Created 3 tables Department, Location & Employees

CREATE TABLE Department (                                            
Department_ID  Int         Primary KEY,
Department_name varchar(100)
) ;


CREATE TABLE Location(
Location_ID Int    primary key,
Location_name varchar(100)
) ;

CREATE TABLE Employees (
Emp_ID int    primary key,
Employee_name varchar(100),
Gender varchar(10),
Age int,
Hire_Date date,
Designation varchar(30),
Salary decimal(10,2),
Department_ID int,
Location_ID int,
FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID)
) ;

## 2. TABLE ALTERATION
## altering table to add new columns
	 
ALTER TABLE Employees
ADD Column Email varchar(40) ;

## Modified Designation data typee to support wider range of values

ALTER TABLE Employees
modify Designation varchar(50);

## Drop column age from Employee table

ALTER TABLE employees
DROP column Age;

## Rename hire date in to Date of Joining

ALTER TABLE Employees
RENAME column Hire_Date to Date_of_Joining;


## 3. TABLE RENAMING

RENAME TABLE Department to Departments_Info;

RENAME TABLE Location to Locations;

## 4. TABLE TRUNCATION(Truncate)

TRUNCATE TABLE Employees;

## 5. Drop Employees table and Databse

drop table Employees; 
drop database Dataset;
























