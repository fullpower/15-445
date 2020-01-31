SELECT COUNT(DISTINCT(person_id))
  FROM crew
  WHERE title_id IN (
	SELECT DISTINCT title_id
	FROM crew
	WHERE person_id IN (
	  SELECT person_id
        FROM people
        WHERE name == "Mark Hamill" and born == 1951
    )
  )
  and (category == "actor" or category == "actress")
  ;