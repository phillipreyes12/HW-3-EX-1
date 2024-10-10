SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Gender='F' AND Age=30;
SELECT Points FROM students WHERE Name='Alex';

INSERT INTO students VALUES('Phillip', '28', 'M', 500) 
UPDATE students SET Points=500 WHERE Name='Basma';
UPDATE students SET Points=400 WHERE Name='Alex';


CREATE TABLE graduates(
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
		Gender TEXT,
		Points INTEGER,
		Graduation TEXT
);

SELECT employees.Name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.Name;
SELECT employees.Name FROM employees Inner join companies ON employees.Company=companies.Name and companies.Date < 2000;
SELECT companies.Name FROM companies Inner join employees ON employees.Company=companies.Name and employees.Role='Graphic Designer';