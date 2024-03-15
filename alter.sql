-- Active: 1710337589553@@127.0.0.1@5432@ph

SELECT * FROM "user";

INSERT INTO "user" VALUES (3, 'hasan', 'morol', 23, 'hasan@gmail.com')

ALTER TABLE "user"
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@email.com' NOT NULL;

ALTER TABLE "user"
    RENAME COLUMN user_age to age;


ALTER TABLE "user"
    ALTER COLUMN age set NOT NULL;

ALTER TABLE "user"
    ALTER COLUMN first_name TYPE VARCHAR(50);

ALTER TABLE "user"
    ALTER COLUMN first_name set NOT NULL;

ALTER TABLE "user"
    ALTER COLUMN first_name DROP NOT NULL;

ALTER TABLE "user"
    ADD constraint unique_user_age UNIQUE(age)

DROP TABLE "user"

TRUNCATE TABLE "user"
