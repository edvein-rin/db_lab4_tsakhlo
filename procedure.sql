CREATE OR REPLACE PROCEDURE review(review_id int)
LANGUAGE 'plpgsql'
AS $$
DECLARE review_author_name author.name%TYPE;
DECLARE review_ramen_name ramen.name%TYPE;

BEGIN
	SELECT name into review_author_name from author join review on (author.id == review.author_id) where review.id == review_id;
	SELECT name into review_ramen_name from ramen join review on (ramen.id == review.ramen_id) where review.id == review_id;
    RAISE INFO 'Revied ramen: %,  Review author: %', TRIM(review_ramen_name), TRIM(review_author_name);
END;
$$;