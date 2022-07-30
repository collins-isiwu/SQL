 --In 9.sql, write a SQL query to list the names of all people who starred in a movie released in 2004, ordered by birth year.
SELECT name FROM people
JOIN movies
ON movies.id = stars.movie_id
JOIN stars
ON people.id = stars.person_id
WHERE year = "2004"
ORDER BY birth;
 