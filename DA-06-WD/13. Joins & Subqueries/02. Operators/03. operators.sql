select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023;


-- UNION | Shows the bigger data | Remove duplicates
select * from users.users_2021 union select * from users.users_2022;
select * from users.users_2022 union select * from users.users_2021;
select * from users.users_2022 union select * from users.users_2023;
select * from users.users_2021 union select * from users.users_2023;
select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023;
select * from users.users_2023 union select * from users.users_2022 union select * from users.users_2021;

-- UNION ALL | Shows all data of both the tables | Don't remove duplicates
select * from users.users_2021 union all select * from users.users_2022;
select * from users.users_2022 union all select * from users.users_2021;
select * from users.users_2022 union all select * from users.users_2023;
select * from users.users_2021 union all select * from users.users_2023;
select * from users.users_2021 union all select * from users.users_2022 union all select * from users.users_2023;
select * from users.users_2023 union all select * from users.users_2022 union all select * from users.users_2021;

-- EXCEPT | Shows all data from table-1 which is not there in table-2
select * from users.users_2021 EXCEPT select * from users.users_2022;
select * from users.users_2022 EXCEPT select * from users.users_2021;
select * from users.users_2021 EXCEPT select * from users.users_2023;
select * from users.users_2023 EXCEPT select * from users.users_2021;
select * from users.users_2021 EXCEPT select * from users.users_2022 EXCEPT select * from users.users_2023;

-- INTERSECT | Shows only the common data of tables
select * from users.users_2021 INTERSECT select * from users.users_2022;
select * from users.users_2022 INTERSECT select * from users.users_2021;
select * from users.users_2022 INTERSECT select * from users.users_2023;
select * from users.users_2023 INTERSECT select * from users.users_2022;
select * from users.users_2021 INTERSECT select * from users.users_2023;
select * from users.users_2023 INTERSECT select * from users.users_2021;
select * from users.users_2021 INTERSECT select * from users.users_2022 INTERSECT select * from users.users_2023;