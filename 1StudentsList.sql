USE dbms_sem5

CREATE TABLE All__Student (Id INT(5) primary key, Name VARCHAR(20), Age INT(3), Marks INT(3),
 Category CHAR(1));

INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (45, 'SURYA', 19, 100, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (47, 'NAREN', 19, 97, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (48, 'SARVESH', 19, 96, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (49, 'MODI', 54, 100, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (50, 'BIDEN', 69, 70, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (51, 'ARUN', 20, 95, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (52, 'DEEPAK', 22, 88, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (53, 'PRIYA', 21, 93, 'F');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (54, 'AMAN', 23, 85, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (55, 'RIA', 20, 90, 'F');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (56, 'VIKRAM', 25, 87, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (57, 'KAVYA', 19, 98, 'F');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (58, 'RAHUL', 24, 75, 'M');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (59, 'SNEHA', 21, 92, 'F');
INSERT INTO All__Student (Id, Name, Age, Marks, Category) VALUES (60, 'ADITYA', 22, 80, 'M');

SELECT DISTINCT* FROM All__Student; /*WHERE age <35 AND Name LIKE '__R%'; /*OR Name LIKE 'R%';*/

DESCRIBE All__Student;

SELECT COUNT(*) TOTAL FROM All__Student;
SELECT COUNT(*) AS 'TOTAL WOMEN COUNT' FROM All__Student WHERE Category = 'F';

SELECT * FROM All__Student WHERE Marks = (SELECT(MIN(Marks)));
SELECT * FROM All__Student
WHERE Marks = (SELECT MIN(Marks) FROM All__Student);
SELECT * FROM All__Student
WHERE Marks = (SELECT Max(Marks) FROM All__Student);

