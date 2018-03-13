CREATE TABLE PrjMember (
	emp_id SERIAL References emp(emp_id) ,
	prj_id SERIAL References Prj(Prj_id) ,
	eRole INTEGER ,
	Primary key(emp_id ,Prj_id)
);