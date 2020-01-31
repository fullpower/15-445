WITH
  T1 (m) as (
	SELECT 25000.0
  )
  , T2 (C) as (
	SELECT SUM(rating * votes) / SUM(votes)
	FROM ratings
	JOIN titles
	ON titles.title_id == ratings.title_id AND titles.type == "movie"
  )

SELECT primary_title, (votes/(votes+m)) * rating + (m/(votes+m)) * C as WR
  FROM ratings, T1, T2
  JOIN titles
  ON titles.title_id == ratings.title_id and titles.type == "movie"
  ORDER BY WR DESC
  LIMIT 250
  ;