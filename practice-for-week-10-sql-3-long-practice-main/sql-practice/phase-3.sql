-- Find the name of the cats co-owned by both George Beatty and Melynda Abshire
-- Your code here

SELECT cats.name FROM cats
WHERE cats.id IN (
    SELECT cat_id FROM cat_owners
    WHERE cat_owners.owner_id IN (
        SELECT id FROM owners
        WHERE owners.first_name = 'George' AND owners.first_name = 'Melynda'
    )
);
