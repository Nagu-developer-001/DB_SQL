CREATE database Course;
USE Course;
CREATE TABLE Cats(
	name VARCHAR(50),
    age int
);
INSERT INTO Cats(name,age) VALUES ("jet",11),("jetty",99);
DESC Cats;
SELECT * FROM Cats;
-- EXERCISE
CREATE TABLE people(
	first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);
INSERT INTO people(first_name,last_name,age) VALUES("Nagabhushana","Kunkipal",19);
INSERT INTO people(first_name,last_name,age) VALUES("Naveen","Kumbara",21),
													("Noothan","G Y",20);
SELECT * FROM people;
DROP TABLE people;
DROP DATABASE category;
SHOW databases;
-- NULL VALUES IS NOT KNOWN NULL DOES NOT MEEAN ZERO
CREATE TABLE cat1(
	name VARCHAR(20) NOT NULL,
    age INT NOT NULL
);
INSERT INTO cat1(name,age) VALUES ("Jetter",15);
-- SETTING DEFAULT VALUES AND NULL VALUES FOR THE ATTTRIBUTES
CREATE TABLE peoples(
	name VARCHAR(50) DEFAULT 'Mind Your Own Business',
    age INT NOT NULL
);
INSERT INTO peoples(age) VALUES (17);
-- PRIMARY KEY FOR ACCESSING KEY ELEMENTS 
CREATE TABLE Unique_Cats(
	cat_id INT PRIMARY KEY,
    name VARCHAR(50)
);
-- AUTOINCREMENT FOR COUNTIGIOUS INCREMENT
CREATE TABLE Unique_Dogs(
	dog_id INT AUTO_INCREMENT,
    name VARCHAR(50) DEFAULT "UNTITLED",
    age INT NULL,
    CONSTRAINT pkid PRIMARY KEY(dog_id)
);
INSERT INTO Unique_Dogs(name) VALUES ("DoberMan"),("PitBull");
SELECT * FROM Unique_Dogs;
DESC Unique_Dogs;
-- --- EXERCISE ---
CREATE TABLE Employee(
	emp_id INT AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    Current_Status VARCHAR(50) NOT NULL DEFAULT "Employed",
    CONSTRAINT pk_j PRIMARY KEY(emp_id)
);
DESC Employee;

INSERT INTO Employee(first_name,middle_name,last_name,age) VALUES ("abc","abc","abc",23),
																	("abc","abc","abc",23),
                                                                    ("abc","abc","abc",23),
                                                                    ("abc","abc","abc",23);
-- CRUD OPERATIONS
-- RETRIVE DATA/READ DATA
-- SELECT EXPRESSION 
SELECT first_name,middle_name,last_name FROM Employee;
SELECT emp_id FROM Employee;
-- WHERE CLOUSE
SELECT first_name FROM Employee WHERE emp_id=3;
-- ALIASING
SELECT first_name AS FULL_NAME FROM Employee WHERE first_name="abc";
-- UPDATING THE DATA IN THE TABLE
SET SQL_SAFE_UPDATES = 0;
UPDATE Employee SET age=4 WHERE age=23 AND first_name="abc";
DELETE FROM Employee WHERE age=emp_id;
-- ALL CRUD CHALLENGE / EXERCISE
-- SPRING CLEANING - THE ANNUAL CLOSET INVENTORY
-- NEW DB- SHIRTS_DB AND TABLE-SHIRTS
CREATE DATABASE SHIRTS_DB;
USE SHIRTS_DB;
CREATE TABLE Shirts(
	shirt_id INT AUTO_INCREMENT,
    article VARCHAR(100) ,
    Color VARCHAR(50),
    Shirt_size VARCHAR(50),
    Last_Worn INT,
    CONSTRAINT pk_id PRIMARY KEY(shirt_id)
);
-- REQUIREMENT-1
INSERT INTO Shirts(article,Color,Shirt_size,Last_Worn) VALUES ('polo-shirt','purpule','M',50);
-- REQUIREMENT-2
SELECT article,Color FROM Shirts;
-- REQUIREMENT-3
SELECT shirt_id AS ID FROM Shirts WHERE Shirt_size='M';
--  REQUIREMENT-4
SET SQL_SAFE_UPDATES = 0;
UPDATE Shirts SET Shirt_size="L" WHERE article="polo-shirt";
-- REQUIREMENT-5
UPDATE Shirts SET Last_Worn=0 WHERE Last_Worn>=15;
-- REQUIREMENT-6
INSERT INTO Shirts(article,Color,Shirt_size,Last_Worn) VALUES ('polo-shirt','white','M',50);
UPDATE Shirts SET Shirt_size="xs"  WHERE Color="white";
UPDATE Shirts SET Color="off-white"  WHERE Color="white";
-- REQUIREMENT-7
DELETE FROM Shirts WHERE Last_Worn>=200;
-- REQUIREMENT-8
DELETE FROM Shirts WHERE article="tank-tops";
-- REQUIREMENT-9
DELETE FROM Shirts;
SELECT * FROM Shirts;
DROP TABLE Shirts;
DROP DATABASE SHIRTS_DB;


CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
