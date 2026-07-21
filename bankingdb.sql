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
show databases;

ALTER TABLE Customers
ADD DateOfBirth DATE;

desc customers;
show databases;

ALTER TABLE Customers
MODIFY Phone VARCHAR(20);
desc customers;


ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

DROP TABLE AccountBranches;

ALTER TABLE Customers
ADD PRIMARY KEY (CustomerID);
desc accounts;

ALTER TABLE Accounts
ADD CustomerID INT;
desc accounts;

ALTER TABLE Accounts

ADD CONSTRAINT FK_Accounts_Customers

FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);

ALTER TABLE Accounts
ADD CustomerID INT;

desc Customers;


ALTER TABLE Customers
MODIFY FirstName VARCHAR(50) NOT NULL;
ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);

desc accounts;

ALTER TABLE Accounts
ADD BranchID INT;

desc branches;

alter table branches
add primary key (BranchID);
SHOW CREATE TABLE BRANCHES;

ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Branches
FOREIGN KEY (BranchID)
REFERENCES Branches(BranchID);

ALTER TABLE Transactions
ADD AccountID INT;


DESC ACCOUNTS;


ALTER TABLE ACCOUNTS
ADD PRIMARY KEY (ACCOUNTID);
DESC ACCOUNTS;
ALTER TABLE Transactions
ADD CONSTRAINT FK_Transactions_Accounts
FOREIGN KEY (AccountID)
REFERENCES Accounts(AccountID);

ALTER TABLE Loans
ADD CustomerID INT;

ALTER TABLE Loans
ADD CONSTRAINT FK_Loans_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);






INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, DateOfBirth)
VALUES
(101,'Rahul','Sharma','rahul@gmail.com','9876543210','1998-04-15');

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201,101,'Savings',25000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000),
(203, 103, 'Savings', 35000),
(204, 104, 'Current', 60000),
(205, 105, 'Savings', 45000);

SET SQL_SAFE_UPDATES=0;

UPDATE Customers
SET Phone='9003845289'
WHERE CustomerID=101;

SELECT * FROM Customers
WHERE CustomerID = 101;

UPDATE Customers
SET Email='rahul.sharma@gmail.com'
WHERE CustomerID=101;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000),
(203, 103, 'Savings', 35000),
(204, 104, 'Current', 60000),
(205, 105, 'Savings', 45000);

SELECT * FROM Customers
WHERE CustomerID = 101;

DELETE FROM Transactions
WHERE TransactionID = 302;

select * from branches;

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(1, 'Mumbai Branch', 'Andheri, Mumbai', '0221111111'),
(2, 'Pune Branch', 'Shivaji Nagar, Pune', '0202222222'),
(3, 'Nashik Branch', 'College Road, Nashik', '0253222222'),
(4, 'Nagpur Branch', 'Sitabuldi, Nagpur', '0712333333'),
(5, 'Navi Mumbai Branch', 'Vashi, Navi Mumbai', '0224444444');

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000),
(203, 103, 'Savings', 35000),
(204, 104, 'Current', 60000),
(205, 105, 'Savings', 45000);

INSERT INTO Loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate, CustomerID)
VALUES
(302, 300000, 9.25, '2025-02-10', '2028-02-10', 102),
(303, 750000, 8.75, '2025-03-20', '2032-03-20', 103),
(304, 250000, 10.00, '2025-04-05', '2029-04-05', 104),
(305, 1000000, 7.95, '2025-05-12', '2035-05-12', 105);
select * from loans;

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(2, 'Pune Branch', 'Shivaji Nagar, Pune', '0202222222'),
(3, 'Nashik Branch', 'College Road, Nashik', '0253222222'),
(4, 'Nagpur Branch', 'Sitabuldi, Nagpur', '0712333333'),
(5, 'Navi Mumbai Branch', 'Vashi, Navi Mumbai', '0224444444');



INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, DateOfBirth)
VALUES
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2000-09-20'),
(103, 'Amit', 'Patel', 'amit.patel@gmail.com', '9876500001', '1995-06-18'),
(104, 'Sneha', 'Joshi', 'sneha.joshi@gmail.com', '9876500002', '1997-09-12'),
(105, 'Rohan', 'Kulkarni', 'rohan.k@gmail.com', '9876500003', '1993-11-25');

INSERT INTO Loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate, CustomerID)
VALUES
(301, 500000, 8.50, '2025-01-15', '2030-01-15', 101),
(302, 300000, 9.25, '2025-02-10', '2028-02-10', 102),
(303, 750000, 8.75, '2025-03-20', '2032-03-20', 103),
(304, 250000, 10.00, '2025-04-05', '2029-04-05', 104),
(305, 1000000, 7.95, '2025-05-12', '2035-05-12', 105);



INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000),
(203, 103, 'Savings', 35000),
(204, 104, 'Current', 60000),
(205, 105, 'Savings', 45000);
select * from transactions;


INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, 201, '2025-05-10', 5000, 'Deposit'),
(302, 202, '2025-05-11', 2500, 'Withdraw'),
(303, 203, '2025-05-12', 10000, 'Deposit'),
(304, 204, '2025-05-13', 3000, 'Withdraw'),
(305, 205, '2025-05-14', 7000, 'Deposit');

USE BANKINGDB;
SELECT * FROM Customers;
SELECT FirstName, LastName, Email, Phone
FROM Customers;
SELECT *
FROM Accounts
WHERE AccountType = 'Savings';
SELECT *
FROM Accounts
WHERE Balance > 25000;
SELECT *
FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;
SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103);
SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';
SELECT *
FROM Customers
ORDER BY FirstName ASC;

SELECT *
FROM Accounts
ORDER BY Balance DESC;
SELECT DISTINCT AccountType
FROM Accounts;

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 3;

SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;

SELECT *
FROM Customers
WHERE Phone IS NULL;

SELECT *
FROM Customers
WHERE Email IS NOT NULL;

SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;




