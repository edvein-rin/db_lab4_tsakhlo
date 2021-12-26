CREATE OR REPLACE FUNCTION get_high_quality_ramens() RETURNS INT AS $$
    BEGIN
        RETURN (SELECT ramen_id FROM review WHERE review.stars > 8);
    END;
$$ LANGUAGE 'plpgsql';
