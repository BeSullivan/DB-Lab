CREATE TABLE persons (
	P_id SERIAL ,
	LastName VARCHAR (50),
	FirstName VARCHAR (50),
	Address VARCHAR (200),
	City VARCHAR (80),
	PRIMARY KEY (LastName ,FirstName)
	
)