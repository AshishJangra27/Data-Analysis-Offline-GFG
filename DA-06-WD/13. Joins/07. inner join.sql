SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;

-- Employees & Department
select * from gfg.employees t1 inner join gfg.department t2 on t1.departmentid = t2.departmentid;
select * from gfg.department t1 inner join gfg.employees t2 on t1.departmentid = t2.departmentid;

-- Employees & Salaries
select * from gfg.employees t1 inner join gfg.salaries t2 on t1.employeeid = t2.employeeid;
select * from gfg.salaries t1 inner join gfg.employees t2 on t1.employeeid = t2.employeeid;

-- Employee, Department & Salary
select * from gfg.employees t1 
right join gfg.department t2 on t1.departmentid = t2.departmentid 
right join gfg.salaries t3  on t1.employeeid = t3.employeeid;

-- Selecting Specific Columns
select t1.EmployeeID, t1.FirstName, t1.LastName, t2.DepartmentName, t3.Salary from gfg.employees t1 
right join gfg.department t2 on t1.departmentid = t2.departmentid 
right join gfg.salaries t3  on t1.employeeid = t3.employeeid;