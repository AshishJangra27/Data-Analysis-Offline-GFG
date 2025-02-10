SELECT count(*) FROM gfg.employees;
SELECT count(*) FROM gfg.department;
SELECT count(*) FROM gfg.salaries;

-- Cross Join | Employees & Department
SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.employees CROSS JOIN gfg.department;

SELECT count(*) FROM gfg.employees CROSS JOIN gfg.department;
SELECT * FROM gfg.department;
SELECT * FROM gfg.employees;
SELECT * FROM gfg.department CROSS JOIN gfg.employees;
SELECT count(*) FROM gfg.department CROSS JOIN gfg.employees;



SELECT * FROM gfg.employees CROSS JOIN gfg.department;
SELECT * FROM gfg.department CROSS JOIN gfg.employees;


-- Cross Join | Employees & Salaries
SELECT * FROM gfg.employees;
SELECT * FROM gfg.salaries;
SELECT * FROM gfg.employees CROSS JOIN gfg.salaries;
SELECT * FROM gfg.salaries;
SELECT * FROM gfg.employees;
SELECT * FROM gfg.salaries CROSS JOIN gfg.employees;
SELECT count(*) FROM gfg.salaries CROSS JOIN gfg.employees;

-- Cross Join | Department & Salaries
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;
SELECT * FROM gfg.department CROSS JOIN gfg.salaries;
SELECT * FROM gfg.salaries;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries CROSS JOIN gfg.department;
SELECT count(*) FROM gfg.salaries CROSS JOIN gfg.department;

-- -- Cross Join | Employees, Department & Salaries
SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;
SELECT * FROM gfg.employees CROSS JOIN gfg.department CROSS JOIN gfg.salaries;
SELECT count(*) FROM gfg.employees CROSS JOIN gfg.department CROSS JOIN gfg.salaries;