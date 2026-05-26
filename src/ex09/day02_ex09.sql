WITH md AS (SELECT *
    FROM person_order po
    JOIN menu m ON po.menu_id = m.id
    JOIN person p ON po.person_id = p.id
    WHERE p.gender = 'female')
SELECT name
FROM md
WHERE pizza_name = 'pepperoni pizza'

INTERSECT

SELECT name
FROM md
WHERE pizza_name = 'cheese pizza'

ORDER BY name ASC;