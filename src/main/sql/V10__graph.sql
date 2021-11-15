CREATE TABLE graph(
                      id serial primary key,
                      start varchar,
                      ending varchar,
                      weight integer
);

insert into graph (start, ending, weight) values ('s','u',3), ('s','x', 5), ('u','v',6),
                                                 ('u', 'x', 2), ('x','u', 1), ('x', 'y',6),
                                                 ('x', 'v', 4), ('y', 's', 3), ('y', 'v', 7),
                                                 ('v', 'y', 2);
insert into graph (start, ending, weight) VALUES (null,'s', 0);

WITH RECURSIVE path_cte AS
                   (
                       SELECT ending, array [ending] AS path, FALSE AS cycle
                       FROM graph
                       WHERE start IS NULL
                       UNION ALL
                       SELECT graph.ending,
                              path_cte.path || graph.ending AS path,
                              graph.ending = ANY (path_cte.path) AS cycle
                       FROM graph
                                INNER JOIN path_cte ON (path_cte.ending = graph.start) AND NOT cycle)

SELECT DISTINCT path
FROM path_cte WHERE ending = 'y';


WITH RECURSIVE dijkstra_cte AS
                   (
                       SELECT ending, array [ending] AS path, FALSE AS cycle, weight
                       FROM graph
                       WHERE start IS NULL
                       UNION ALL
                       SELECT graph.ending,
                              dijkstra_cte.path || graph.ending AS path,
                              graph.ending = ANY (dijkstra_cte.path) AS cycle,
                              graph.weight + dijkstra_cte.weight
                       FROM graph
                                INNER JOIN dijkstra_cte ON (dijkstra_cte.ending = graph.start) AND NOT cycle),
               short (weight)
                   AS (SELECT MIN(weight)
                       FROM dijkstra_cte
                       WHERE ending = 'y')

SELECT DISTINCT path, j.weight
FROM dijkstra_cte j
         INNER JOIN short s ON j.weight = s.weight;





