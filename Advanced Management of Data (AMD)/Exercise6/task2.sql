-- extend it again to use Robert instead of Bob and change Bill to William, too

CREATE OR REPLACE FUNCTION hello(name VARCHAR) RETURNS VARCHAR AS $$
    BEGIN
        IF name IS NULL THEN
            name = 'World';
        ELSEIF name = '' THEN
            name = 'Anonymous';
        ELSIF name = 'Bob' THEN
            name = 'Robert';
        ELSE IF name = 'Bill' THEN
                name = 'William';
            END IF;
        END IF;
        RETURN format('Hello, %s!', name);
    END;
$$ LANGUAGE plpgsql;

SELECT * from hello('Bill');