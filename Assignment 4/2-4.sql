CREATE TABLE Book (
	ID INT PRIMARY KEY,
	Bookname VARCHAR(30),
	yearPublish INT ,
	authorName VARCHAR(40),
	QTY	 INT
);

CREATE OR REPLACE FUNCTION noDelFunc() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
    RAISE EXCEPTION 'YOU CANT DELETE Book !';
    RETURN OLD;
END;
$$;

CREATE TRIGGER noDelete BEFORE DELETE ON Book 
FOR EACH ROW
EXECUTE PROCEDURE noDelFunc();


insert into book VALUES (555 , 'saeedreza' , 2001 , 'ali' ,5);
insert into book VALUES (222 , 'ali' , 1002 , 'saeedreza' ,4);

select * from Book;

delete from Book;


-- There is no Drop Event in Postgres on Trigger 
-- so I implement 4th section like this
