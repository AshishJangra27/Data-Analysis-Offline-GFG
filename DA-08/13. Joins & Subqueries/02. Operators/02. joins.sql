select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023;

-- User 2021 & 2022
select * from users.users_2021 as t_2021 inner join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID;
select * from users.users_2022 as t_2022 inner join users.users_2021 as t_2021 on t_2021.UserID = t_2022.UserID;


-- User 2022 & 2023
select * from users.users_2022 as t_2022 inner join users.users_2023 as t_2023 on t_2022.UserID = t_2023.UserID;
select * from users.users_2023 as t_2023 inner join users.users_2022 as t_2022 on t_2023.UserID = t_2022.UserID;


-- User 2021 & 2023
select * from users.users_2021 as t_2021 inner join users.users_2023 as t_2023 on t_2021.UserID = t_2023.UserID;
select * from users.users_2023 as t_2023 inner join users.users_2021 as t_2021 on t_2023.UserID = t_2021.UserID;

-- User 2021,2022 & 2023
select * from users.users_2021 as t_2021 inner join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID
inner join users.users_2023 as t_2023 on t_2023.UserID = t_2021.UserID;