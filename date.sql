-- Active: 1710337589553@@127.0.0.1@5432@ph@public

SELECT now();

CREATE Table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timeZ VALUES('2024-01-12 11:13:00', '2024-01-12 11:13:00');

SELECT * FROM timeZ;

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT age(now(), '2002-08-17');

SELECT *, age(CURRENT_DATE, dob) as ages from students;

SELECT extract(month from '2002-08-17'::date)

SELECT 1::BOOLEAN;
SELECT 'n'::BOOLEAN;