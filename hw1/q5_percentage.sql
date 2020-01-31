SELECT CAST(premiered / 10 * 10 AS TEXT) || 's' AS decade
  , Round(100.0 * COUNT(*) / (SELECT COUNT(*) FROM titles), 4) as percentage
  FROM titles
  WHERE premiered IS NOT NULL
  GROUP BY decade
  ;