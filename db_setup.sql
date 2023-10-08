-- Script name: Database setup
-- Author: Bertram Hage, Christian Rand, Johannes Nielsen, Caroline Hørlykke
-- Date: March 23, 2023
-- Description: This script sets up a database regarding Formula 1. 

DROP DATABASE IF EXISTS formel;
CREATE DATABASE formel;
USE formel;

DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS TeamStaff;
DROP TABLE IF EXISTS Driver;
DROP TABLE IF EXISTS Car;
DROP TABLE IF EXISTS Venue;
DROP TABLE IF EXISTS Race;
Drop VIEW IF EXISTS TeamBudgetSalary;
Drop VIEW If EXISTS RoleAvgSalary;

CREATE TABLE Team
	(TeamName	VARCHAR(20),
	 Size		DECIMAL(3,0),
	 Budget		DECIMAL(10,3),
	 PRIMARY KEY(TeamName)
	);

CREATE TABLE TeamStaff
	(StaffName	VARCHAR(20),
	 StaffRole		VARCHAR(25),
     StartDate		DATE NOT NULL,
	 TeamName		VARCHAR(20),
     Salary			INT,
	 PRIMARY KEY(StaffName),
     FOREIGN KEY(TeamName) REFERENCES Team(TeamName) ON DELETE CASCADE
	);

CREATE TABLE Driver
	(DriverName	VARCHAR(20),
	 DriverAge			DECIMAL(3,0),
	 TeamName		VARCHAR(20),
     ContractStartDate		DATE,
	 PRIMARY KEY(DriverName),
     FOREIGN KEY(TeamName) REFERENCES Team(TeamName) ON DELETE CASCADE
	);

CREATE TABLE Car
	(CarID	VARCHAR(5),
	 TeamName		VARCHAR(20),
     DriverName		VARCHAR(20),
	 PRIMARY KEY(CarID),
     FOREIGN KEY(TeamName) REFERENCES Team(TeamName) ON DELETE SET NULL,
     FOREIGN KEY(DriverName) REFERENCES Driver(DriverName) ON DELETE SET NULL
	);

CREATE TABLE Venue
	(VenueName	VARCHAR(50),
	 Location	VARCHAR(20),
     Capacity		Decimal(10,0),
     CourseLength	Decimal(8,5),
     BuildYear		Year,
	 PRIMARY KEY(VenueName)
	);

CREATE TABLE Race
	(RaceName	VARCHAR(50),
	 RaceDate	DATE,
     VenueName		VARCHAR(50),
     Winner			VARCHAR(20),
	 PRIMARY KEY(RaceName),
     FOREIGN KEY(VenueName) REFERENCES Venue(VenueName) ON DELETE CASCADE,
     FOREIGN KEY(Winner) REFERENCES Driver(DriverName)
	);
#View1
CREATE VIEW RoleAvgSalary AS
Select StaffRole, Avg(Salary) as AvgSalary from TeamStaff Group By StaffRole Order By AvgSalary DESC;

#View2
CREATE VIEW TeamBudgetSalary AS
Select TeamName, Budget, Sum(Salary) as TotalSalary from Team Natural Join TeamStaff Group By TeamName;