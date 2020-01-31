WITH temp (title_id, title_count) AS (
  SELECT title_id, COUNT(*) AS num
    FROM akas
    GROUP BY title_id
    ORDER BY num DESC
    LIMIT 10
)
SELECT titles.primary_title, temp.title_count
  FROM temp
  JOIN titles
  ON temp.title_id == titles.title_id
  ;