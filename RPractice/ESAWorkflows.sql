CREATE DATABASE ESAWorkflows;
USE ESAWorkflows;
CREATE TABLE Projects(
	ID int UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	Name varchar(50) NOT NULL,
	Number int NOT NULL
);
CREATE TABLE Workflows(
	ID int UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	Name varchar(50) NOT NULL,
	Description varchar(200) NOT NULL,
	ErrorEmail varchar(100) NOT NULL
);
CREATE TABLE Employees(
	ID int UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	Name varchar(50) NOT NULL,
	HRNumber char(10) NOT NULL,
	ADUserName char(20) NOT NULL,
	ManagerID int NULL
);
CREATE TABLE Attributes(
	ID int UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	WorkflowID int NOT NULL,
	Name varchar(20) NOT NULL,
	Value varchar(200) NOT NULL,
	LocationID int NULL
);
CREATE TABLE Locations(
	ID int UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	Name varchar(50) NOT NULL
);
CREATE TABLE Departments(
	ID int UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	Name varchar(50) NOT NULL,
	Number int NOT NULL
);

