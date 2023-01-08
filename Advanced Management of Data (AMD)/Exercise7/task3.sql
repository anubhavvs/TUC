-- modify it to return 0 if this exception occurs

CREATE OR REPLACE FUNCTION count42() RETURNS INTEGER AS $$
    DECLARE
        c INTEGER = 1;
    BEGIN
        WHILE (SELECT COUNT(*) FROM random42()) != 42 LOOP
            c = c + 1;
        END LOOP;
        RETURN c;
    EXCEPTION
        WHEN numeric_value_out_of_range THEN
            RETURN 0;
    END;
$$ LANGUAGE plpgsql;

SELECT * from count42();
