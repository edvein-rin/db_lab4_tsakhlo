CREATE OR REPLACE FUNCTION capitalize() RETURNS trigger AS
$$
	BEGIN
		UPDATE author
		SET name = INITCAP(name) WHERE author.name = NEW.name; 
		RETURN NULL;
	END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER on_author_insert
AFTER INSERT ON author
FOR EACH ROW EXECUTE FUNCTION capitalize();
