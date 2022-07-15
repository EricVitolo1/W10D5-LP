-- Using subqueries, find the names of the cats whose owners are either George Beatty or Melynda Abshire
-- Your code here

SELECT cats.name FROM cats
WHERE cats.id IN (
    SELECT cat_id FROM cat_owners
    WHERE cat_owners.owner_id IN (
        SELECT id FROM owners
        WHERE owners.first_name = 'George' OR owners.first_name = 'Melynda'
    )
);
