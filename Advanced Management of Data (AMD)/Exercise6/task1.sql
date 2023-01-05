-- rewrite the hello(name) function to use Anonymous in case of an empty string


CREATE OR REPLACE FUNCTION hello(name VARCHAR) RETURNS VARCHAR AS $$
    BEGIN
        IF name IS NULL THEN
            RETURN hello();
        ELSEIF name = '' THEN
            RETURN hello('Anonymous');
        ELSE
            RETURN format('Hello, %s!', name);
        END IF;
    END;
$$ LANGUAGE plpgsql;

SELECT * from hello('');