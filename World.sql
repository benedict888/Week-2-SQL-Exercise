-- WORLD

-- 1) Using COUNT, get the number of cities in the USA.
-- SELECT count(name) FROM city
-- WHERE CountryCode='USA';

-- 2) Find out the population and life expectancy for people in Argentina.
-- SELECT Name, Population, LifeExpectancy FROM country where Name="argentina";

-- 3)Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?
-- SELECT NAME, LifeExpectancy from country
-- WHERE LifeExpectancy IS NOT NULL
-- ORDER BY LifeExpectancy  DESC
-- LIMIT 1;

-- 4)Using JOIN ... ON, find the capital city of Spain.


-- 5)Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.
SELECT cl.Language FROM country c
JOIN countrylanguage cl ON c.code=countrylanguage.Language 
WHERE c.region = "Southeast Asia";
-- 6)Using a single query, list 25 cities around the world that start with the letter F.
-- SELECT NAME FROM city
-- WHERE NAME LIKE 'F%';
-- LIMIT 25

-- 7)Using COUNT and JOIN ... ON, get the number of cities in China.

-- 8)Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
-- SELECT NAME, Population FROM country
-- WHERE Population IS NOT NULL AND Population !=0 
-- ORDER BY Population ASC
-- LIMIT 1;

-- 9)Using aggregate functions, return the number of countries the database contains.
-- SELECT COUNT(NAME) FROM country;

-- 10)What are the top ten largest countries by area?
-- SELECT NAME, SurfaceArea FROM COUNTRY ORDER BY SurfaceArea DESC
-- LIMIT 10;

-- 11)List the five largest cities by population in Japan.
-- SELECT * from city
-- WHERE CountryCode="JPN"
-- ORDER BY Population LIMIT 5;

-- 12)List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!
-- SELECT NAME, Code FROM country
-- WHERE HeadOfState = "Elisabeth II";

-- 13)List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0.

-- 14)List every unique world language.
-- SELECT DISTINCT Language FROM countrylanguage;

-- 15)List the names and GNP of the world's top 10 richest countries.
-- SELECT NAME, GNP FROM COUNTRY
-- ORDER BY GNP DESC
-- LIMIT 10;

-- 16)List the names of, and number of languages spoken by, the top ten most multilingual countries.


-- 17)List every country where over 50% of its population can speak German.

-- 18)Which country has the worst life expectancy? Discard zero or null values.
-- SELECT NAME 
-- FROM COUNTRY
-- WHERE NAME =(
-- SELECT MIN(LifeExpectancy) 
-- FROM country
-- );

-- 19)List the top three most common government forms.
-- SELECT GovernmentForm FROM country
-- GROUP BY GovernmentForm
-- ORDER BY COUNT(*) DESC
-- LIMIT 3;

-- 20)How many countries have gained independence since records began?

USE WORLD;
-- SELECT Name, Population, LifeExpectancy FROM country where Name="argentina";
-- SELECT NAME FROM city
-- WHERE NAME LIKE 'F%'
-- LIMIT 25
-- ;

-- SELECT count(name) FROM city
-- WHERE CountryCode='USA';

-- SELECT DISTINCT Language FROM countrylanguage;
-- SELECT NAME 
-- FROM COUNTRY
-- WHERE NAME =(
-- SELECT MIN(LifeExpectancy) 
-- FROM country
-- );

SELECT COUNT(NAME) FROM country;
SELECT NAME, SurfaceArea FROM COUNTRY ORDER BY SurfaceArea DESC
LIMIT 10;
SELECT * from city
WHERE CountryCode="JPN"
ORDER BY Population LIMIT 5;
SELECT NAME, Code FROM country
WHERE HeadOfState = "Elisabeth II";
SELECT NAME, Population FROM country
WHERE Population IS NOT NULL AND Population !=0 
ORDER BY Population ASC
LIMIT 1;
SELECT NAME, GNP FROM COUNTRY
ORDER BY GNP DESC
LIMIT 10;