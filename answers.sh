SELECT Name FROM Students;
SELECT * FROM Students WHERE Age > 30;
SELECT Name FROM Students WHERE Gender='F' AND Age=30;
SELECT Points FROM Students WHERE Name='Alex';
INSERT INTO Students VALUES(10, 'Phillip', '28', 'M', 500);
UPDATE Students SET Points = 500 WHERE Name='Basma';
UPDATE Students SET Points = 100 WHERE Name='Alex';


CREATE TABLE graduates(
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
		Gender TEXT,
		Points INTEGER,
		Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM graduates WHERE Name='Layal';

SELECT employees.Name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.Name;
SELECT employees.Name FROM employees Inner join companies ON employees.Company=companies.Name and companies.Date < 2000;
SELECT companies.Name FROM companies Inner join employees ON employees.Company=companies.Name and employees.Role='Graphic Designer';

select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(Name) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;