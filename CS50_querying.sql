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
SELECT "title" FROM "BOOKLIST" where "title" LIKE 'T____' ; /* will on return T and then the _ which will have exact same number of chars as we have mentioned in query*/
/* Working with ranges 
<
>
<=
>=
*/
SELECT "title","author","year" FROM "BOOKLIST" where "year"=2023 or "year"=2022 or "year"=2021;
/* SO the better way */
SELECT "title","author","year" FROM "BOOKLIST" where "year">=2019 AND "year"<=2022;
/*Between .. and ...*/
SELECT "title","author","year" FROM "BOOKLIST" where "year" between 2019 AND 2022;
/*string search is not case sensitive in case of LIKE but in case of = it is case sensitive */
/* ORDER BY Default order is AESC */
SELECT "title","author","year","rating","votes" FROM "BOOKLIST" ORDER BY "rating" DESC, "votes" DESC  LIMIT 10;
/*Order by rating first and then by votes* in case of string order is alphabetical*/
/*AGGREGATE COUNT AVG MIN MAX SUM */
SELECT AVG("rating") FROM "BOOKLIST";
SELECT ROUND(AVG("rating"),2) AS "Average Rating" FROM "BOOKLIST";
/*ROUND(AVG("rating"),2) will round at 2 decial points AS will add the name of column*/
SELECT SUM("votes") from "Longlist";
/* Max or Min in string will give maximum W charachter wise */
SELECT COUNT(DISTINCT "publisher") AS 'Total Publisher' FROM "booklist";
/*RLIKE Fucntion in SQL */
/*
*	Zero or more instances of string preceding it
+	One or more instances of strings preceding it
.	Any single character
?	Match zero or one instances of the strings preceding it.
^	caret(^) matches Beginning of string
$	End of string
[abc]	Any character listed between the square brackets
[^abc]	Any character not listed between the square brackets
[A-Z]	match any upper case letter.
[a-z]	match any lower case letter
[0-9]	match any digit from 0 through to 9.
*/
SELECT DISTINCT(CITY) FROM STATION WHERE CITY RLIKE '^[aeiou].*[aeiou]$'
SELECT DISTINCT(CITY) FROM STATION WHERE CITY NOT RLIKE '^[aeiou].*$' /*Start*/
SELECT DISTINCT(CITY) FROM STATION WHERE CITY NOT RLIKE '^.*[aeiou]$' ; /*End*/
/*
^ Matches begining of String 
. Any single character
* Zero or more instance preceding it 
$ End of String 
*/
/*
SELECTING LONGEST CITY LENGETH */
SELECT CITY,LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC LIMIT 1;
SELECT CITY,LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC LIMIT 1;
