WITH castboth (title_id) AS (
SELECT title_id
  FROM crew
  WHERE person_id IN (
	SELECT person_id
	  FROM people
	  WHERE (name == "Mark Hamill" and born == 1951)
  )
INTERSECT
SELECT title_id
  FROM crew
  WHERE person_id IN (
    SELECT person_id
    FROM people
    WHERE (name == "George Lucas" and born == 1944)
  )
)
SELECT primary_title
  FROM titles
  JOIN castboth
  ON titles.type == "movie" and titles.title_id == castboth.title_id
  ;

