-- in addition to IN and OUT parameters there are also INOUT parameters, so
-- rewrite one of your swap() functions to use only two INOUT parameters

CREATE OR REPLACE FUNCTION swap(INOUT ANYELEMENT, INOUT ANYELEMENT) AS $$
    DECLARE
        tmp $1%type;
    BEGIN
        tmp = $1;
        $1 = $2;
        $2 = tmp;
    END;
$$ LANGUAGE plpgsql;

SELECT * FROM swap('1'::VARCHAR, '2');