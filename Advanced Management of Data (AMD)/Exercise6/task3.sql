-- rewrite it and try to use the CASE control structure instead

CREATE OR REPLACE FUNCTION hello(name VARCHAR) RETURNS VARCHAR AS $$
    BEGIN
        CASE
            WHEN name IS NULL THEN
                name = 'World';
            WHEN name = '' THEN
                name = 'Anonymous';
            WHEN name = 'Bob' THEN
                name = 'Robert';
            WHEN name = 'Bill' THEN
                name = 'William';
            ELSE
                NULL;
        END CASE;
        RETURN format('Hello, %s!', name);
    END;
$$ LANGUAGE plpgsql;

SELECT * from hello('');