create table fraction(
                        id serial primary key ,
                        title varchar unique not null
);
create table team(
                     id serial primary key ,
                     title varchar,
                     fraction_id integer,
                     foreign key (fraction_id) references fraction(id)
);
create table warrior(
                     id serial primary key ,
                     name varchar ,
                     rank integer
);
create table weapon(
                            id serial primary key,
                            warrior_id integer,
                            type_of_weapon varchar unique,
                            foreign key (warrior_id) references warrior(id)
);
create table fraction_warrior(
                       warrior_id integer,
                       fraction_id integer,
                       foreign key (warrior_id) references warrior(id),
                       foreign key (fraction_id) references fraction(id)
);
create table warrior_team(
                                 warrior_id integer,
                                 team_id integer,
                                 foreign key (warrior_id) references warrior(id),
                                 foreign key (team_id) references team(id)
);


