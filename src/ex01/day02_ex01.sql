SELECT gs::date AS missing_date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') gs
LEFT JOIN person_visits pv 
    ON pv.visit_date::date = gs::date
    AND (pv.person_id = 1 OR pv.person_id = 2)
WHERE pv.visit_date IS NULL
ORDER BY missing_date;