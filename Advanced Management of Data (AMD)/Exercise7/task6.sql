-- write some kind of wrapper function for this, that is returning a cursor to an
-- instance without an exception

CREATE OR REPLACE FUNCTION wrap_random42() RETURNS REFCURSOR AS $$
    DECLARE
        curs CURSOR FOR SELECT * FROM random42();
    BEGIN
        LOOP
            BEGIN
                OPEN curs;
                    MOVE FORWARD FROM curs;
                    MOVE BACKWARD IN curs;
                    RETURN curs;
                EXCEPTION
                    WHEN OTHERS THEN -- catch any exception, ignore it and try again
                        NULL;
                    CLOSE curs;
            END;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

SELECT * from wrap_random42();