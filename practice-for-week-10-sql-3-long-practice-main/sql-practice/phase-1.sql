--Insert new cat named "Red" born this year
INSERT INTO cats (name, birth_year)
VALUES ("Red", 2022);

--Assign ownership of new cat to George Beatty using subqueries
INSERT INTO cat_owners (owner_id, cat_id)
VALUES (
    5,9
);

--Query to verify INSERTs worked properly
SELECT cats.name from cats JOIN cat_owners ON (cats.id = cat_owners.cat_id)
WHERE cat_owners.owner_id = 5;
