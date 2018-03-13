CREATE TABLE Emp (
	Emp_id SERIAL,
	Name VARCHAR (50) ,
	Salary INTEGER ,
	DeptNo INTEGER references Dept(DeptNo) ON DELETE CASCADE
);