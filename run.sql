-- Function
SELECT ramen_id from review where review.stars > 8;
SELECT get_high_quality_ramens();

-- Procedure
CALL review(0);
CALL review(1);

-- Trigger
SELECT * FROM author;

INSERT INTO author(id, name)
VALUES(3, 'danna');

SELECT * FROM author;
