
![microsoft-sql-server-logo-png](https://github.com/justanadmin/SQL/assets/103416575/c89b1c67-d930-4fcf-8094-ed33c71e0e1c)
SQL Commands Cheat Sheet
Welcome to my SQL Commands Cheat Sheet repository! Here, you'll find a collection of SQL commands, notes, and tips that I've gathered while brushing up on my SQL skills. Whether you're a beginner looking to learn SQL or an experienced developer in need of a quick reference, you'll find useful information here.

Feel free to use this repository as a reference guide or for revision purposes. If you have any suggestions, improvements, or additional commands to add, please don't hesitate to contribute!

Table of Contents
SELECT Statement
INSERT Statement
UPDATE Statement
DELETE Statement
ALTER Statement
CREATE Statement
DROP Statement
SELECT Statement
The SELECT statement is used to retrieve data from a database.

sql
SELECT column1, column2
FROM table_name
WHERE condition;
INSERT Statement
The INSERT statement is used to insert new records into a table.

sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
UPDATE Statement
The UPDATE statement is used to modify existing records in a table.

sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
DELETE Statement
The DELETE statement is used to delete existing records from a table.

sql
DELETE FROM table_name
WHERE condition;
ALTER Statement
The ALTER statement is used to add, modify, or drop columns in a table.

sql
ALTER TABLE table_name
ADD column_name datatype;

ALTER TABLE table_name
MODIFY column_name datatype;

ALTER TABLE table_name
DROP COLUMN column_name;
CREATE Statement
The CREATE statement is used to create a new table in the database.

sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
);
DROP Statement
The DROP statement is used to delete an entire table from the database.

sql
DROP TABLE table_name;
Contributing
Contributions are welcome! If you have any SQL commands, notes, or tips to add, please feel free to submit a pull request.


Happy SQL querying! 🚀
