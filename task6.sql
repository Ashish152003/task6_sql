
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    Budget INT,
    LeadID INT,
    FOREIGN KEY (LeadID) REFERENCES Employees(EmployeeID)
);

-- DATA INSERTION

INSERT INTO Employees VALUES
(1, 'Ashish', 'IT', 70000),
(2, 'Priya', 'HR', 50000),
(3, 'Ravi', 'Finance', 60000),
(4, 'Neha', 'IT', 80000),
(5, 'Amit', 'HR', 55000);

INSERT INTO Projects VALUES
(101, 'Alpha', 100000, 1),
(102, 'Beta', 200000, 4),
(103, 'Gamma', 150000, 2);

-- 1️⃣ SCALAR SUBQUERY in SELECT: Show employee and department average salary
SELECT 
    Name,
    Department,
    Salary,
    (SELECT AVG(Salary) FROM Employees WHERE Department = E.Department) AS AvgDeptSalary
FROM Employees E;

-- 2️⃣ CORRELATED SUBQUERY in WHERE: Employees earning above their department average
SELECT Name, Salary, Department
FROM Employees E
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
    WHERE Department = E.Department
);

-- 3️⃣ IN with SUBQUERY: Employees who are project leads
SELECT Name
FROM Employees
WHERE EmployeeID IN (
    SELECT LeadID FROM Projects
);

-- 4️⃣ EXISTS with SUBQUERY: Employees who are leading any project
SELECT Name
FROM Employees E
WHERE EXISTS (
    SELECT 1 FROM Projects P WHERE P.LeadID = E.EmployeeID
);

-- 5️⃣ SUBQUERY IN FROM clause: Top 2 highest paid employees using derived table
SELECT Name, Salary
FROM (
    SELECT Name, Salary
    FROM Employees
    ORDER BY Salary DESC
    LIMIT 2
) AS TopEarners;
