-- write a new function random42(), that returns random INTEGER values
-- (each at its own row) in a range of 1 to 100 and exits when the number 42 is returned
-- Count the total attempts in the SQL query syntax

CREATE OR REPLACE FUNCTION random42() RETURNS SETOF INTEGER AS $$
    DECLARE
        rnd INTEGER;
    BEGIN
        LOOP
            rnd = ceil(random() * 100)::INTEGER;
            RETURN NEXT rnd;
            EXIT WHEN rnd = 42;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

SELECT count(*) from random42();