# Formula 1 database design

## Overview
This project creates, populates and manipulates a database regarding Formula 1. A theoretical background is provided in report.pdf.
This was a group project handed in as part of the completion of the course Database Systems at Technical University of Denmark (DTU).

## Database
The database contains the following entities: Drivers, Owns, Contract, Employed, Wins, Race Location.

The relations between the entities are as follows:
### Drives
All drivers are assigned to one or more cars. A car does not necessarily have a driver, as it can be a new car, yet to be assigned to a driver.

### Owns
All cars are assigned to a team, and all teams have cars. Each team can have more than one car.

### Contract
All drivers are on a contract with a team, and all teams have one or more drivers on contract. The contract relation, has a attributed called start date, which is the start date of the contract.

### Employed
All teams have staff and all team staff are assigned to a team. A team has one or more staff members. The employed relation has the attribute salary.

### Wins
Alle races have a winner, but not alle drivers have a win. One driver can have multiple wins.

### Race Location
All races have a location, but not all venues neccesarily have a race, as it can be a new venue that is yet to be raced. A venue can possibly host multiple races.

## Instance
The database is populated with a database instance in the script db_instance.sql.

## Manipulation
In the script db_manipulate.sql various queries, functions and procedures are provided for manipulating a database instance.

## Report
In the report the theoretical background behind the database is described in detail. 
The report contains the sections:
1 Statement of requirements
2 Conceptual design
3 Logical design
4 Implementation
5 Database instance
6 SQL data queries
7 SQL programming
8 SQL table modifications

## Usage

To use this Formula 1 database and work with the provided scripts, follow these steps:

1. **Database Setup:**
   - Run the `db_setup.sql` script to create the necessary database schema.
     ```sql
     source db_setup.sql;
     ```

2. **Database Population:**
   - Populate the database using the provided database instance script, `db_instance.sql`.
     ```sql
     source db_instance.sql;
     ```

3. **Database Manipulation:**
   - Utilize the provided queries, functions, and procedures in `db_manipulate.sql` to interact with and manipulate the database instance.
     ```sql
     source db_manipulate.sql;
     ```

Feel free to modify and adapt the scripts to suit your specific database requirements and configurations.


