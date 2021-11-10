Select * from team INNER JOIN fraction on team.fraction_id = fraction.id;
Select team.title, fraction.title from team INNER JOIN fraction on team.fraction_id = fraction.id;

insert into weapon (type_of_weapon) values ('Bone Knife'), ('black notebook');

SELECT * FROM warrior LEFT JOIN weapon on warrior.id = weapon.warrior_id;

SELECT * FROM warrior RIGHT JOIN weapon on warrior.id = weapon.warrior_id;

SELECT weapon.type_of_weapon, warrior.name FROM warrior FULL JOIN weapon on warrior.id = weapon.warrior_id;

SELECT weapon.type_of_weapon, warrior.name FROM warrior CROSS JOIN weapon;

SELECT * FROM warrior NATURAL JOIN weapon; -- ничего не выводит)

SELECT * FROM fraction NATURAL JOIN fraction_warrior;

--semi join
SELECT *

FROM warrior w

WHERE EXISTS (

              SELECT * FROM weapon wep

              WHERE w.id = wep.warrior_id);


--anti join
SELECT *

FROM warrior w

WHERE  NOT EXISTS (

        SELECT * FROM weapon wep

        WHERE w.id = wep.warrior_id);





