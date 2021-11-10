create view super_weapon
as select * from weapon
where type_of_weapon like '%sword'
with cascaded check option;