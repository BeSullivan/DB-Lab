CREATE TABLE Book (
	ID INT PRIMARY KEY,
	Bookname VARCHAR(30),
	yearPublish INT ,
	authorName VARCHAR(40),
	QTY	 INT
);

DELIMITER $$ 
CREATE TRIGGER NoChangeBook
INSTEAD OF INSERT ON Book
BEGIN
	select "No Change";
END;$$
DELIMITER;