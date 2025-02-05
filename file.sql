-- CREATE DATABASE IF NOT EXISTS College;
-- USE College;
-- SET SQL_SAFE_UPDATES = 0;
-- CREATE TABLE Teacher(
-- 	id INT UNSIGNED,
--     Name VARCHAR(50),
--     Subject VARCHAR(50),
--     Salary INT UNSIGNED,
--     CONSTRAINT PK_19J PRIMARY KEY(id)
-- );
-- INSERT INTO Teacher
-- (id,Name,Subject,Salary)
-- VALUES
-- (23,"ajay","math",50000),
-- (47,"Bharth","English",60000),
-- (18,"Chethan","Physics",45000),
-- (9,"divya","Chemistry",75000);

-- SELECT * FROM Teacher;

-- UPDATE Teacher
-- SET CTC=CTC+(CTC*0.25);

-- SELECT Name,Subject FROM Teacher WHERE CTC>55000;

-- ALTER TABLE Teacher
-- CHANGE COLUMN Salary CTC INT UNSIGNED;


-- ALTER TABLE Teacher
-- ADD COLUMN City VARCHAR(100) DEFAULT "Gurgaon";


-- ALTER TABLE Teacher
-- CHANGE CTC Salary INT UNSIGNED;


-- ALTER TABLE Teacher
-- DROP COLUMN Salary;


-- CREATE TABLE Student(
-- 	roll_No INT UNSIGNED,
--     Name VARCHAR(50),
--     City VARCHAR(50),
--     Marks BIGINT,
--     CONSTRAINT PK201 PRIMARY KEY(roll_No)
-- );

-- INSERT INTO Student
-- (roll_No,Name,City,Marks)
-- VALUES
-- (110,"adam","Delhi",76),
-- (108,"bob","mumbai",65),
-- (124,"casey","pune",94),
-- (112,"duke","pune",80);

-- SELECT * FROM Student;

-- SELECT Name FROM Student WHERE Marks>75;

-- SELECT DISTINCT City FROM Student ;

-- SELECT MAX(Marks),City FROM Student GROUP BY(City);

-- SELECT AVG(Marks) FROM Student;

-- ALTER TABLE Student
-- ADD COLUMN Grade VARCHAR(50) NOT NULL;

-- UPDATE Student
-- SET Grade="O" WHERE Marks>80 AND Marks<=100;

-- UPDATE Student 
-- SET Grade="A" WHERE Marks>70 AND Marks<=80;

-- UPDATE Student
-- SET Grade="B" WHERE Marks>60 AND Marks<=70;



SELECT 1+1