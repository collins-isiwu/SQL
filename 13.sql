--In 13.sql, write a SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred
SELECT DISTINCT(name) FROM people WHERE name IS NOT 'Kevin Bacon' AND id IN
(SELECT person_id FROM stars WHERE movie_id IN
(SELECT movie_id FROM stars WHERE person_id IN
(SELECT id FROM people WHERE name IS 'Kevin Bacon' and birth = 1958)));