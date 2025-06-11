/*
=======================================================
Create Database and Schemas
=======================================================
Script Purpose:
	The script checks for the existence of a database named 'Database' and recreates it if it already exists. 
	It then sets up three schemas within the database: 'bronze', 'silver', and 'gold'.
Warning:
	When executed, the script drops the 'Datawarehouse' database if it exists, permanently deleting all its contents.
	Proceed only after verifying that reliable backups are available.
*/

USE master;
GO

-- Drop and recreate the database 'DataWarehouse'

IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO


-- Create Database 'DataWarehouse'

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
