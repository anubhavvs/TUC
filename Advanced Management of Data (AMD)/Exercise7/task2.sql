-- extend this range to include number 0 (by removing the usage of ceil()) and further modify
-- the function to raise the exception numeric_value_out_of_range, when it dices number 0

CREATE OR REPLACE FUNCTION random42() RETURNS SETOF INTEGER AS $$
    DECLARE
        rnd INTEGER;
    BEGIN
        LOOP
            rnd = (random() * 100)::INTEGER;
            IF rnd = 0 THEN
                RAISE numeric_value_out_of_range;
            END IF;
            RETURN NEXT rnd;
            EXIT WHEN rnd = 42;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

SELECT * from random42();