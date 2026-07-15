show databases;

CREATE DATABASE BankingDB;

SHOW databases;

USE BankingDB;

CREATE TABLE Customers (
	CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email varchar(100) ,
    Phone varchar(15)
    
);

ALTER TABLE Customers
ADD PRIMARY KEY (CustomerID);

ALTER TABLE CUSTOMERS 
modify FirstName VARCHAR(100);

DESC Customers;