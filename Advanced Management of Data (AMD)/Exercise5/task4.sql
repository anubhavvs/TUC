-- write a new function, that
-- • takes a name as input parameter and
-- • assigns the value 42 to a local variable and
-- • assigns the return value of the function call to twentyone() to another local variable and
-- • returns the return values of a function call to swap() with these two variables as parameters and
-- • also returns the swapped return values of the function calls to hello() and hello(name)

CREATE OR REPLACE FUNCTION combination(name VARCHAR, OUT int1 INTEGER, OUT int2 INTEGER, OUT str1 VARCHAR, OUT str2 VARCHAR) AS $$
    DECLARE
        forty_two CONSTANT INTEGER = 42;
        twenty_one INTEGER; -- possible to initialize like twenty_one CONSTANT INTEGER = twentyone();
    BEGIN
        SELECT * INTO twenty_one FROM twentyone(); -- same as twenty_one = twentyone();
        SELECT * INTO int1, int2 FROM swap (forty_two, twenty_one);
        SELECT * INTO str1, str2 FROM swap (hello(), hello(name));
    END;
$$ LANGUAGE plpgsql;

SELECT * from combination('FF');