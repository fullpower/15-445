WITH temp (type, longest_runtime) AS (
  SELECT type, MAX(runtime_minutes)
  FROM titles
  GROUP BY type
  ORDER BY type
)
SELECT titles.type, titles.primary_title, titles.runtime_minutes
  FROM titles
  JOIN temp
  ON titles.type == temp.type and titles.runtime_minutes == temp.longest_runtime
  ORDER BY titles.type, titles.primary_title
  ;
