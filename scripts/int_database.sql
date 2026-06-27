/*
--------------------------------------------------------------------
create database and schemes 
--------------------------------------------------------------------
## Script Purpose

This script initializes the `DataWarehouse` database environment by:

- Checking whether the `DataWarehouse` database already exists.
- Dropping the existing database if found.
- Creating a new `DataWarehouse` database.
- Creating three schemas:
  - `bronze`
  - `silver`
  - `gold`

> **Warning**
> Running this script will permanently delete the existing `DataWarehouse` database and all associated data. Ensure that any important data is backed up before execution.
*/

Use master 
GO 
-- Drop and recreate the 'DataWarehouse' database
  IF EXIST ( SELECT 1 FROM sys.database WHERE name= 'datawarehouse')
BEGIN  
ALTER database datawarehouse 
SET SINGLE_USER WITH ROLLBACK IMMEDIATE    
DROP database datawarehouse 
  END;
GO
-- create the 'Datewarehouse' database 
CREATE DATABASE datawarehouse 
go 


USE datawarehouse;
go 


--create schemes 
create schema bronze;  
go
  
create schema silver;
go
  
create schema gold
go
