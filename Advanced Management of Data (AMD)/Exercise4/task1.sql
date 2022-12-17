-- rewrite hello world function without raising notice but returning the text as string

CREATE OR REPLACE FUNCTION hello() RETURNS VARCHAR AS $$
    BEGIN
        RETURN 'Hello World!';
    END;
$$ LANGUAGE plpgsql;

SELECT * from hello();