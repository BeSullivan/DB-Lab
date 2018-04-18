CREATE TABLE Book (
	ID INT PRIMARY KEY,
	Bookname VARCHAR(30),
	yearPublish INT ,
	authorName VARCHAR(40),
	QTY	 INT
);

CREATE TABlE book_log (
	ID INT ,
	Bookname VARCHAR(30),
	yearPublish INT ,
	authorName VARCHAR(40),
	QTY	 INT,
	ins_del INT
);

CREATE OR REPLACE FUNCTION triggerInsDel() RETURNs trigger LANGUAGE plpgsql AS $$
begin
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO book_log (ID ,Bookname ,yearPublish ,authorName ,QTY ,ins_del) VALUES (NEW.* ,1);
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN 
        INSERT INTO book_log (ID ,Bookname ,yearPublish ,authorName ,QTY ,ins_del) VALUES (OLD.* ,0);
        RETURN OLD;
    END IF;
end;
$$;

CREATE TRIGGER logging AFTER INSERT OR DELETE ON Book
FOR EACH ROW
EXECUTE procedure triggerInsDel();

insert into Book values (555 ,'saeed' ,1232 , 'ali' ,12);
delete from Book where Book.ID = 555;

select * from book_log;