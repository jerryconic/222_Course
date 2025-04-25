USE db01;
--Ctrl + Shift + R(����֨��O���骺��Ʈw��쵲�c)

SELECT * FROM dbo.Employee;

SELECT * FROM dbo.Employee
WHERE emp_id = 3;

SELECT * FROM dbo.Employee
WHERE salary < 40000;

SELECT * FROM dbo.Employee
WHERE birth_date >= '1992-1-1';

SELECT * FROM dbo.Employee
WHERE emp_name <> 'John';

SELECT * FROM dbo.Employee
WHERE emp_id IN (1, 3, 5);

SELECT * FROM dbo.Employee
WHERE salary BETWEEN 30000 AND 40000;

SELECT * FROM dbo.Employee
WHERE salary BETWEEN 40000 AND 30000;

SELECT * FROM dbo.Employee
WHERE emp_name LIKE 'A%'; --�H'A'���r��

SELECT * FROM dbo.Employee
WHERE emp_name LIKE '%A'; --�H'A'���r��

SELECT * FROM dbo.Employee
WHERE emp_name LIKE '%A%'; --��r���]�t'A'

SELECT * FROM dbo.Employee
WHERE emp_name LIKE 'J___'; --'John'

SELECT * FROM dbo.Employee
WHERE emp_name LIKE 'J____'; --X

UPDATE dbo.Employee
SET emp_name = 'XXX', birth_date = '2000-1-1', salary = 0
WHERE emp_id = 4;

DELETE FROM dbo.Employee
WHERE emp_id = 3;

SELECT * FROM dbo.Employee;