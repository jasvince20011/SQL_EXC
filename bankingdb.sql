show databases;

CREATE DATABASE BankingDB;

SHOW databases;

USE BankingDB;

CREATE TABLE Customers (
	CustomerID INT,
    FirstName VARCHAR(50) not null,
    LastName VARCHAR(50),
    Email varchar(100) ,
    Phone varchar(15)
);

ALTER TABLE Customers
ADD PRIMARY KEY (CustomerID);

ALTER TABLE CUSTOMERS 
modify FirstName VARCHAR(100);

DESC Customers;

USE Bankingdb;
ALTER TABLE CUSTOMERS ADD ACCOUNTCREATIONDATE DATE;
ALTER TABLE CUSTOMERS ADD DATEOFBIRTH DATE;

use bankingdb;
CREATE TABLE Accounts (
    AccountID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2)
);
CREATE TABLE Transactions (
    TransactionID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20)
);
CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);
CREATE TABLE AccountBranches ( 
		AssignmentDate DATE
);
CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);
ALTER TABLE Customers
ADD DateOfBirth DATE;
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);


ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

DROP TABLE AccountBranches;

ALTER TABLE Customers
ADD PRIMARY KEY (CustomerID);

ALTER TABLE Accounts
ADD CustomerID INT;

ALTER TABLE Accounts

ADD CONSTRAINT FK_Accounts_Customers

FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);
ALTER TABLE Accounts
ADD CustomerID INT;

ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);

desc Customers;


ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);

ALTER TABLE Customers
MODIFY FirstName VARCHAR(50) NOT NULL;
ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);




