WITH cte_warrior_two AS (
UPDATE warrior SET rank = warrior.rank*2
    RETURNING *
)
SELECT * FROM cte_warrior_two;