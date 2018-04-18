CREATE TABLE Student (
	Student_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	grade INT
);

INSERT INTO Student(name ,Student_id ,grade) VALUES (R1 ,8831047 ,12);
INSERT INTO Student(name ,Student_id ,grade) VALUES (R2 ,8831043 ,10);
INSERT INTO Student(name ,Student_id ,grade) VALUES (R3 ,8831031 ,15);
INSERT INTO Student(name ,Student_id ,grade) VALUES (R4 ,8831051 ,16);
INSERT INTO Student(name ,Student_id ,grade) VALUES (R5 ,8831012 ,11);

ALTER TABLE Student
ADD COLUMN newGrade INT;


UPDATE Student SET newGrade = grade + 2 WHERE grade < 15;

SELECT grade ,newGrade
FROM Student
WHERE grade < 15