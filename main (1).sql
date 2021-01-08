/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
CREATE TABLE Employee(
code CHAR(2) PRIMARY KEY,
name VARCHAR(20),
dob DATE,
designation VARCHAR(20),
salary int
);
INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('01','EMILY','11-01-1995','MD',75000),
('02','KARTHIK','01-03-1996','MANAGER',45000),
('03','SETHU','15-12-1998','CLERK',20000),
('04','CHAHAL','10-02-1995','AUDITOR',60000);

SELECT * FROM Employee ORDER BY name DESC;

CREATE TABLE Deposit(
baccno BIGINT,
branch_name VARCHAR(60),
amount int
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(200001,'thrissur',300000),
(200002,'palakkad',20000),
(200003,'alappuzha',120000),
(200004,'kannur',220000),
(200005,'ernakulam',15000);

SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;