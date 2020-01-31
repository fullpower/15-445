SELECT type, COUNT(*) AS num
  FROM titles
  GROUP BY type
  ORDER BY num
  ;