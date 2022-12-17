-- typical “Hello, World!” program

CREATE OR REPLACE FUNCTION hello() RETURNS VOID AS $$
    BEGIN
        RAISE NOTICE 'Hello, World!';
    END;
$$ LANGUAGE plpgsql;

SELECT * from hello();