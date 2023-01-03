-- Create a new function that swaps strings (VARCHAR and/or TEXT)

CREATE OR REPLACE FUNCTION swap(ANYELEMENT, IN input2 ANYELEMENT, OUT output1 ANYELEMENT, OUT ANYELEMENT) AS $$
    BEGIN
        output1 := input2;
        $4 = $1;
    END;
$$ LANGUAGE plpgsql;

SELECT * FROM swap('hello'::VARCHAR, 'bze'); -- hint for the server to identify the input type as VARCHR