-- write a new rating function, that
-- • uses the CASE construct and
-- • takes an integer as input parameter and
-- • returns a rating string
-- • poor for 1, 2 and 3
-- • average for 4, 5 and 6
-- • good for 7, 8 and 9
-- • excellent for 10
-- • out of range for anything else

CREATE OR REPLACE FUNCTION rating(score INTEGER) RETURNS VARCHAR AS $$
    BEGIN
        CASE score
            WHEN 1, 2, 3 THEN
                return 'poor';
            WHEN 4, 5, 6 THEN
                return 'average';
            WHEN 7, 8, 9 THEN
                return 'good';
            WHEN 10 THEN
                return 'excellent';
            ELSE
                return 'out of range';
        END CASE;
    END;
$$ LANGUAGE plpgsql;

SELECT * from rating(5);