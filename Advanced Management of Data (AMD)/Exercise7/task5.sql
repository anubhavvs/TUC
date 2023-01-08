--  change it to return -1 if this new exception occurs

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
        WHEN error_in_assignment THEN
            RETURN -1;
    END;
$$ LANGUAGE plpgsql;

SELECT * from count42();