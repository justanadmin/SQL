/*
SQL CREATE databases
SQL DROP databases
SQL CREATE Table
SQL INSERT into TABLE 
SQL DROP table 
*/

show databases /* Check the databases */ 
SELECT * FROM "BOOKLIST" LIMIT 10 ;/*We have this option in SQL server GUI too we can simply get the top 10 entries via command too */
/*Introduction to WHERE*/
SELECT "title","author" FROM "BOOKLIST" where "year"=2023;
SELECT "title","author" FROM "BOOKLIST" where "year"!=2023;
SELECT "title","author" FROM "BOOKLIST" where "year"<>2023;
/*Recom : We can use "" for the SQL identifiers and '' for all the strings that are listed 
We have = which is kind of self explainatory !=  not equal <> other than */

/* Merging condition */
SELECT "title","format" FROM "BOOKLIST" where "format" <> 'hardcover' and "year" <> 2023
