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
SELECT "title","author" FROM "BOOKLIST" WHERE NOT "year"=2023;
/* Merging condition : Compound Conditions*/
SELECT "title","format" FROM "BOOKLIST" where "format" <> 'hardcover' and "year" <> 2023;
/*AND OR helps to make more complex conditions , we will also understand () use of brackets*/
SELECT "title","format" FROM "BOOKLIST" where "format" <> 'hardcover' and "year" <> 2023;
SELECT "title","format" FROM "BOOKLIST" where ("year" = 2023 and "year" = 2022) and "format" <> 'hardcover';
/*IS NULL and IS NOT NULL */
SELECT "title","translator" FROM "BOOKLIST" where "translator" IS NULL;
SELECT "title","translator" FROM "BOOKLIST" where "translator" IS NOT NULL;
/* matching patters in SQL LIKE % : any character around _ :any number of character that we need to check */
SELECT "title" FROM "BOOKLIST" where "title" LIKE '%love%'; /*love somewhere in the title : Love in the Big City , Lace Love Lace , Do you love */
SELECT "title" FROM "BOOKLIST" where "title" LIKE 'love%' ; /*will give the result of books that has only love in start e.g. Love Lace , love me like you do , Loved , Love Life*/
SELECT "title" FROM "BOOKLIST" where "title" LIKE 'love %' ;
SELECT "title" FROM "BOOKLIST" where "title" LIKE 'The%love%' ; /* Any book will have The and then love in title , THE LOVE LIFE*/
SELECT "title" FROM "BOOKLIST" where "title" LIKE 'P_RE'; /* When you dont know if it is Pyre or pire , multiple _ are allowed too*/
