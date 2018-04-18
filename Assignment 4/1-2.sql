CREATE OR REPLACE FUNCTION checkTen(num integer) RETURNS void AS $$
DECLARE
	numTen int;
begin
	numTen = (SELECT count(studentID)
				FROM tblStudent
				WHERE tblStudent.grade < 10);
				
	IF (numTen < num) THEN	
		UPDATE tblStudent SET grade = grade + 1 WHERE tblStudent.grade <= 10 and tblStudent.grade >= 9;
	ELSE
		UPDATE tblStudent SET grade = grade + 0.5 WHERE tblStudnet.grade <= 10 and tblStudent.grade >= 9.5;
	END IF;
end
$$;