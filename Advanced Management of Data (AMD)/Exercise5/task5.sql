-- rewrite the function and check the input parameter
-- • if it is NULL then return the same as the hello() function without parameter does

CREATE OR REPLACE FUNCTION hello(name VARCHAR) RETURNS VARCHAR AS $$
    BEGIN
        IF name IS NULL THEN
            RETURN hello();
        ELSE
            RETURN format('Hello, %s!', name);
        END IF;
    END;
$$ LANGUAGE plpgsql;

SELECT * from hello();