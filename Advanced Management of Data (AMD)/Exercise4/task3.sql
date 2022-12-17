-- write a new function swap(), that takes two integer parameters and returns them in reverse order

CREATE OR REPLACE FUNCTION swap(INT, INT, OUT INT, OUT INT) AS $$
    BEGIN
        $3 := $2;
        $4 = $1;
    END;
$$ LANGUAGE plpgsql;

SELECT * from swap(2, 1);