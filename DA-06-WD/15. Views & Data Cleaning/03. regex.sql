use swiggy;
select * from restaurants;


SELECT * FROM restaurants  WHERE name like 's%';
SELECT * FROM restaurants  WHERE name like '_s%';
SELECT * FROM restaurants  WHERE name like '%S%';
SELECT * FROM restaurants  WHERE name like '% Pizza%';

SELECT * FROM restaurants WHERE name LIKE '_h_%';

SELECT * FROM restaurants WHERE name REGEXP '^s';
SELECT * FROM restaurants WHERE name REGEXP 's';
