CREATE TABLE Book (
	ID INT PRIMARY KEY,
	Bookname VARCHAR(30),
	yearPublish INT ,
	authorName VARCHAR(40),
	QTY	 INT
);

insert into Book VALUES (123 ,'saeed' ,2000 ,'ali' ,123);

CREATE OR REPLACE FUNCTION noBookname() RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
	IF(NEW.Bookname <> OLD.Bookname) THEN
		RAISE EXCEPTION 'Cant Change %',OLD.Bookname;
	END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER noUpdateBookname BEFORE UPDATE ON Book
FOR EACH ROW
EXECUTE PROCEDURE noBookname();


UPDATE Book SET Bookname = 'saeedreza' WHERE ID = 123;

select * From Book