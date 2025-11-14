-- Task 1a – Day 15'te hangi varyant daha fazla aktif oyuncu tutuyor?

SELECT
  p.var,
  20000 * (1*p.d1 + 2*p.d3 + 4*p.d7 + 8*p.d14) AS dau_day15
FROM (
  SELECT 'A' AS var, 0.53 AS d1, 0.27 AS d3, 0.17 AS d7, 0.06 AS d14
  UNION ALL
  SELECT 'B',        0.48,        0.25,        0.19,        0.09
) AS p;
