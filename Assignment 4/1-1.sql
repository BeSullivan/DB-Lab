CREATE TABLE tblStudent (
	studentID SERIAL PRIMARY KEY,
	name VARCHAR(60),
	grade REAL
);

CREATE OR REPLACE FUNCTION gradeStates() RETURNS VARCHAR LANGUAGE plpgsql AS $$
DECLARE 
	numTen INT;
    str VARCHAR(6);
BEGIN
	numTen = (SELECT count(studentID) 
				FROM tblStudent
				WHERE tblStudent.grade < 10);
				
	str = CASE WHEN numTen <= 3 THEN 'normal'
               WHEN numTen <= 1 THEN 'good'
               ELSE 'bad'
          END;
    RETURN str;
END
$$;