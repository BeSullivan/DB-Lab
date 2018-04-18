CREATE TABLE Book (
	ID INT PRIMARY KEY,
	Bookname VARCHAR(30),
	yearPublish INT ,
	authorName VARCHAR(40),
	QTY	 INT
);

CREATE View BookView AS
	SELECT *
	From Book;

CREATE OR REPLACE FUNCTION message() RETURNS trigger AS $$
begin
	RAISE EXCEPTION 'NO CHANGE';
	RETURN NEW;
end
$$ LANGUAGE plpgsql;
	
CREATE TRIGGER NoChangeBook
	INSTEAD OF INSERT 
	ON BookView
	FOR EACH ROW	
	execute procedure message();
	
insert into BookView(ID ,Bookname ,yearPublish ,authorName ,QTY) VALUES (22 ,'saeed' ,1997 ,'ali' ,2);