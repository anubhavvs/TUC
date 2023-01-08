-- : let’s write another function count42(), that returns the number of tries to get
-- an instance of our function random42(), which returns exactly 42 random number

CREATE OR REPLACE FUNCTION count42() RETURNS INTEGER AS $$
    DECLARE
        c INTEGER = 1;
    BEGIN
        WHILE (SELECT COUNT(*) FROM random42()) != 42 LOOP
            c = c + 1; -- neither c++ nor ++c nor c += 1 are supported
        END LOOP;
        RETURN c;
    END;
$$ LANGUAGE plpgsql;

SELECT * from count42();