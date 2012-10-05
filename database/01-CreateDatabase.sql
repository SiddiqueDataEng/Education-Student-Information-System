/*
 * Education Student Information System
 * Project #8 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MySQL, VB.NET
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'StudentInfoDB')
BEGIN
    ALTER DATABASE StudentInfoDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE StudentInfoDB;
END
GO

CREATE DATABASE StudentInfoDB
ON PRIMARY
(
    NAME = 'StudentInfoDB_Data',
    FILENAME = 'C:\SQLData\StudentInfoDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'StudentInfoDB_Log',
    FILENAME = 'C:\SQLData\StudentInfoDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE StudentInfoDB SET RECOVERY SIMPLE;
ALTER DATABASE StudentInfoDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE StudentInfoDB;
GO

PRINT 'Database StudentInfoDB created successfully';
PRINT 'Project: Education Student Information System';
PRINT 'Description: Student admissions, courses, grades, and fees management';
GO
