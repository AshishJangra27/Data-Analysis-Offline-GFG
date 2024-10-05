-- select * from cricket.teams;
-- select * from cricket.player_basic;
-- select * from cricket.players_and_team;
-- select * from cricket.players_full;
-- select * from cricket.final;


# Cross Join
select count(*) from cricket.players_and_team;
select count(*) from cricket.teams;
select count(*) from cricket.players_and_team cross join cricket.teams;
select * from cricket.players_and_team cross join cricket.teams;

# Left Join
select * from cricket.players_and_team;
select * from cricket.teams;
select * from cricket.players_and_team t1 left join cricket.teams t2 on t1.team = t2.name;

# Right Join
select * from cricket.players_and_team;
select * from cricket.teams;
select * from cricket.players_and_team t1 right join cricket.teams t2 on t1.team = t2.name;