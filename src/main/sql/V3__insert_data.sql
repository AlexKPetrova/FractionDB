INSERT into fraction (title) values ('Empire'), ('Vardens');
INSERT into team (title, fraction_id) values ('Damned', 3), ('Thorn', 3), ('Hired soldiers', 3),
                                             ('Elves', 4), ('People',4), ('Dwarves', 4);
INSERT INTO warrior (name, rank) VALUES ('One', 3), ('Two', 5), ('Thee', 7), ('Four', 5),('Five', 4),
                                        ('Six', 4), ('Seven', 7), ('Eight',5), ('Nine', 2), ('Ten', 6);
INSERT INTO weapon (warrior_id, type_of_weapon) VALUES (13,'ice sword'), (16, 'swamp spear'),
                                                       (15, 'sky glasses');
INSERT  INTO fraction_warrior values (12,3),(13,3),(15,4),(17,4),(11,3),(16,4),(19,4);
INSERT INTO warrior_team values (12,15), (13,13), (15,18),(19,16);


