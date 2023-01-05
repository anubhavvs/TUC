-- write a function, that calls this rating function with input values in range from 0 to 20 by using the FOR control construct

CREATE OR REPLACE FUNCTION rating_test() RETURNS SETOF VARCHAR AS $$
    BEGIN
        FOR score IN 0..20 LOOP
            RETURN NEXT rating(score);
        END LOOP;
        RETURN;
    END;
$$ LANGUAGE plpgsql;

SELECT * from rating_test();