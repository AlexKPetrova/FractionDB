create view empire_teams
as select title, fraction_id from team
where fraction_id = 3
with cascaded check option;
