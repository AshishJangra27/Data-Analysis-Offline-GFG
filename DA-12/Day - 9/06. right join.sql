SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;

-- Employee & Department
select * from gfg.employees right join gfg.department on gfg.employees.DepartmentID = gfg.department.DepartmentID;
select * from gfg.employees t1 right join gfg.department t2 on t1.DepartmentID = t2.DepartmentID;
select * from gfg.department t1 right join gfg.employees t2 on t1.DepartmentID = t2.DepartmentID;

-- Employee & Salary
select * from gfg.employees t1 right join gfg.salaries t2 on t1.EmployeeID = t2.EmployeeID;
select * from gfg.department t1 right join gfg.employees t2 on t1.DepartmentID = t2.DepartmentID;