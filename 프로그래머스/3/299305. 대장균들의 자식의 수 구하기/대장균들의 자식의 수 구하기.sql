SELECT
    e1.id,
    IFNULL(COUNT(e2.parent_id), 0) AS child_count
FROM 
    ecoli_data e1
    LEFT JOIN ecoli_data e2
    ON e1.id = e2.parent_id
GROUP BY e1.id
ORDER BY e1.id;