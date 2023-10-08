-- Script name: Database instance
-- Author: Bertram Hage, Christian Rand, Johannes Nielsen, Caroline Hørlykke
-- Date: March 23, 2023
-- Description: This script populates the database formel with a database instance.

INSERT INTO Team (TeamName, Size, Budget) VALUES
('Mercedes', 6, 5000000),
('Red Bull Racing', 6, 4500000),
('McLaren', 6, 4000000),
('Ferrari', 6, 4250000);

INSERT INTO Driver (DriverName, DriverAge, TeamName, ContractStartDate) VALUES
('Lewis Hamilton', 36, 'Mercedes', '2018-09-19'),
('Valtteri Bottas', 32, 'Mercedes', '2021-01-01'),
('Max Verstappen', 24, 'Red Bull Racing', '2020-10-10'),
('Sergio Perez', 31, 'Red Bull Racing', '2021-11-01'),
('Lando Norris', 22, 'McLaren', '2022-08-01'),
('Daniel Ricciardo', 32, 'McLaren', '2021-10-01'),
('Charles Leclerc', 24, 'Ferrari', '2021-08-04'),
('Carlos Sainz', 27, 'Ferrari', '2022-07-01');

INSERT INTO TeamStaff (StaffName, StaffRole, StartDate, TeamName, Salary) VALUES
('John Smith', 'Team Principal', '2019-07-01', 'Mercedes', 150000),
('Jane Doe', 'Race Engineer', '2016-02-15', 'Mercedes', 100000),
('Bob Johnson', 'Mechanic', '2020-05-01', 'Mercedes', 75000),
('Emily Brown', 'Marketing Manager', '2021-01-01', 'Mercedes', 90000),
('Dave Williams', 'Team Principal', '2015-01-01', 'Red Bull Racing', 140000),
('Sarah Lee', 'Race Engineer', '2020-03-01', 'Red Bull Racing', 95000),
('Chris Davis', 'Mechanic', '2017-07-01', 'Red Bull Racing', 70000),
('Linda Taylor', 'Marketing Manager', '2022-02-15', 'Red Bull Racing', 85000),
('Tom Jones', 'Team Principal', '2015-09-01', 'McLaren', 135000),
('Lucy Lee', 'Race Engineer', '2022-05-01', 'McLaren', 90000),
('Mark Johnson', 'Mechanic', '2014-01-01', 'McLaren', 70000),
('Julia Brown', 'Marketing Manager', '2018-05-01', 'McLaren', 80000),
('Alex Smith', 'Team Principal', '2019-06-01', 'Ferrari', 155000),
('Sophie Davis', 'Race Engineer', '2020-01-01', 'Ferrari', 100000),
('Oliver Johnson', 'Mechanic', '2021-02-15', 'Ferrari', 75000),
('Emma Brown', 'Marketing Manager', '2017-07-01', 'Ferrari', 95000);

-- Adding data to the Car table
INSERT INTO Car (CarID, TeamName, DriverName) VALUES
('C001', 'Mercedes', 'Lewis Hamilton'),
('C002', 'Mercedes', 'Valtteri Bottas'),
('C003', 'Mercedes', NULL),
('C004', 'Red Bull Racing', 'Max Verstappen'),
('C005', 'Red Bull Racing', 'Sergio Perez'),
('C006', 'Red Bull Racing', NULL),
('C007', 'McLaren', 'Lando Norris'),
('C008', 'McLaren', 'Daniel Ricciardo'),
('C009', 'McLaren', NULL),
('C010', 'Ferrari', 'Charles Leclerc'),
('C011', 'Ferrari', 'Carlos Sainz'),
('C012', 'Ferrari', NULL);

-- Adding data to the Venue table
INSERT INTO Venue (VenueName, Location, Capacity, CourseLength, BuildYear) VALUES
('Silverstone Circuit', 'UK', 150000, 5.891, 1948),
('Monza Circuit', 'Italy', 113000, 5.793, 1922),
('Circuit de Barcelona-Catalunya', 'Spain', 140700, 4.655, 1991),
('Circuit de Monaco', 'Monaco', 20000, 3.337, 1929),
('Suzuka Circuit', 'Japan', 155000, 5.807, 1962),
('Nürburgring', 'Germany', 150000, 5.148, 1927),
('Albert Park Circuit', 'Australia', 80000, 5.303, 1996);

-- Adding data to the Race table
INSERT INTO Race (RaceName, RaceDate, VenueName, Winner) VALUES
('British Grand Prix', '2022-07-17', 'Silverstone Circuit', 'Lewis Hamilton'),
('Italian Grand Prix', '2022-09-11', 'Monza Circuit', 'Max Verstappen'),
('Spanish Grand Prix', '2022-05-08', 'Circuit de Barcelona-Catalunya', 'Lewis Hamilton'),
('Monaco Grand Prix', '2022-05-29', 'Circuit de Monaco', 'Max Verstappen'),
('Japanese Grand Prix', '2022-10-09', 'Suzuka Circuit', 'Sergio Perez'),
('German Grand Prix', '2022-07-31', 'Nürburgring', 'Lewis Hamilton'),
('Australian Grand Prix', '2022-03-20', 'Albert Park Circuit', 'Valtteri Bottas');