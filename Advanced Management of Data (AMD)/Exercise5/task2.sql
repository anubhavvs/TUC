-- write a new function twentyone(), which
-- • declares two variables seventeen and four and
-- • assigns them the values 17 and 4 and
-- • returns the sum of them (should be 21)

CREATE OR REPLACE FUNCTION twentyone() RETURNS INTEGER AS $$
    DECLARE
        seventeen INTEGER;
        four CONSTANT INT = 4;
    BEGIN
        seventeen = 17;
        RETURN seventeen + four;
    END;
$$ LANGUAGE plpgsql;

SELECT * from twentyone();