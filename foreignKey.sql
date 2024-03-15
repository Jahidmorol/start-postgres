-- Active: 1710337589553@@127.0.0.1@5432@ph@public
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


DROP Table post;
DROP Table "user";

SELECT * from "user";
SELECT * from post;

SELECT title, username FROM post
JOIN "user" ON post.user_id = "user".id

SELECT * FROM post as p
JOIN "user" u on p.user_id = u.id;