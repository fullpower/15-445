SELECT CAST(premiered / 10 * 10 AS TEXT) || 's' AS decade
  , COUNT(*) AS num
  FROM titles
  WHERE premiered IS NOT NULL
  GROUP BY decade
  ORDER BY num DESC
  ;
