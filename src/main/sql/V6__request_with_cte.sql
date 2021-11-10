WITH cte_warrior AS (
    SELECT
        id,
        name,
        (CASE
             WHEN rank < 5 THEN 'weak'
             WHEN rank = 5 THEN 'medium'
             ELSE 'strong'
            END) rank
    FROM
        warrior
)
SELECT
    id,
    name,
    rank
FROM cte_warrior
WHERE rank = 'weak'
ORDER BY name;