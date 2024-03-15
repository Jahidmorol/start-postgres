-- Active: 1710337589553@@127.0.0.1@5432@ph@public

SELECT * FROM students;

SELECT country, count(*) from students
    GROUP BY country;

SELECT country, count(*), avg(age) from students
    GROUP BY country;

SELECT country, count(*), avg(age) from students
    GROUP BY country
    HAVING avg(age) > 20.60;


-- Filter Groups Using HAVING to Show Only Countries with Average Age Above 20.60

SELECT country, avg(age) from students
    GROUP BY country
    HAVING avg(age) > 20.60;


-- Count Students Born in Each Year
SELECT extract(year FROM dob) as birth_year, count(*)
 FROM students
 GROUP BY birth_year;

