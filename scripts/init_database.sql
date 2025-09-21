/*
This script create database 'DatWarehouse' and three schemas which are 'bronze', 'silver', and 'gold' 
*/

USE master;
GO

--CREATE THE 'DataWarehouse' DATABASE
CREATE DATABASE DataWarehouse;
USE DataWarehouse;
GO

  --CREATE SCHEMAS  
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
