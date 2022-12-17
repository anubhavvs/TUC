-- change your function
-- to take a name as input parameter and
-- to output this name instead of "world"

CREATE OR REPLACE FUNCTION hello(name VARCHAR) RETURNS VARCHAR AS $$
    BEGIN
        RETURN format('Hello, %s!', name);
    END;
$$ LANGUAGE plpgsql;

SELECT * from hello('Robert');