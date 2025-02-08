DROP DATABASE IF EXISTS gfg;
CREATE DATABASE gfg;
CREATE TABLE IF NOT EXISTS gfg.employees  (EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), DepartmentID INT);
CREATE TABLE IF NOT EXISTS gfg.department (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50));
CREATE TABLE IF NOT EXISTS gfg.salaries   (EmployeeID INT PRIMARY KEY, Salary INT);


INSERT INTO gfg.employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES
(1, 'Ashish', 'Jangra', 1), (2, 'Ankur', 'Gupta', 2), (3, 'Shivam', 'Kumar', 3), 
(4, 'Sakshi', 'Awasthi', 4), (5, 'Avneet', 'Kaur', 5), (6, 'Sakshi','Singhal',1), 
(7, 'Adarsh','Sharma',4), (8, 'Prakash','Sakari',6),(9,'Puneet','Kansal',7);

INSERT INTO gfg.department (DepartmentID, DepartmentName) VALUES
(1, 'Mentor'), (2, 'Designer'), (3, 'Editor'), (4, 'Onboarding'), (5, 'Project Manager'),(10, 'CEO');

INSERT INTO gfg.salaries (EmployeeID, Salary) VALUES
(1, 50000), (2, 54000), (3, 30000), (4, 60000), (5, 58000),(6,60000),(7,56000);


SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;