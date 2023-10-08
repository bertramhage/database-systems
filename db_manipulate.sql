-- Script name: Database manipulate
-- Author: Bertram Hage, Christian Rand, Johannes Nielsen, Caroline Hørlykke
-- Date: March 23, 2023
-- Description: This script contains queries, functions and procedures to manipulate the database formel.

USE formel;

-- Data Queries
SELECT DriverName, 
    (Select Count(Winner) from Race where Winner = DriverName) AS Wins 
    from Driver Order By Wins DESC;

SELECT RaceName, RaceDate, VenueName, Location, Capacity, CourseLength 
    from Race Natural Join Venue 
    where Capacity>100000;

SELECT TeamName, Avg(Salary) As AvgSalary 
    From TeamStaff 
    Group By TeamName 
    Order By AvgSalary DESC;

-- SQL Programming
DROP FUNCTION IF EXISTS TeamWon;
DELIMITER //
create function TeamWon (vwinner varchar(20)) returns int
begin 
    declare vTeamWon int;
    select count(*) into vTeamWon from Race
    where winner = vwinner;
    return vTeamWon;
end; //
 delimiter  ;
 
select TeamName, sum(TeamWon(drivername)) as Wins from Car
GROUP BY TeamName;

DROP PROCEDURE IF EXISTS SalarySum;
DELIMITER //
CREATE PROCEDURE SalarySum (IN vTeamName VARCHAR(20), OUT vSalary INT)
       BEGIN
         SELECT SUM(salary) INTO vSalary FROM TeamStaff
         WHERE TeamName = vTeamName;
       END//

DELIMITER ;

CALL salarysum('Ferrari', @vSalary); 
SELECT @vsalary as 'SalarySum for Ferrari';

DROP TRIGGER IF EXISTS ReduceTeamSize;
DELIMITER //
CREATE TRIGGER ReduceTeamSize
AFTER DELETE ON TeamStaff
FOR EACH ROW
BEGIN
    UPDATE Team SET Size = Size - 1 WHERE Team.TeamName = old.TeamName;
END//
DELIMITER ;


-- Table modifications
DELETE FROM Car WHERE CarId='C003';

DELETE FROM Venue WHERE BuildYear < 1930;

UPDATE TeamStaff SET Salary=100000 WHERE TeamName='Mercedes' AND Salary<100000;
