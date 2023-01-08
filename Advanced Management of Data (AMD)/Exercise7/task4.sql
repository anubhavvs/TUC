-- to make things more interesting again and test whether casting FLOAT to INTEGER is really rounding, modify
-- random42() to throw another exception error_in_assignment, when it dices a 100

CREATE OR REPLACE FUNCTION random42() RETURNS SETOF INTEGER AS $$
    DECLARE
        rnd INTEGER;
    BEGIN
        LOOP
            rnd = (random() * 100)::INTEGER;
            IF rnd = 0 THEN
                RAISE numeric_value_out_of_range;
            ELSEIF rnd = 100 THEN
                RAISE error_in_assignment;
            END IF;
            RETURN NEXT rnd;
            EXIT WHEN rnd = 42;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

SELECT * from random42();