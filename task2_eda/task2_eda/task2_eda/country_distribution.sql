-- Task 2c – Ülke Dağılımı (Top 10)

SELECT
  country,
  COUNT(*) AS row_count
FROM vertigo_case.raw_all
GROUP BY country
ORDER BY row_count DESC
LIMIT 10;
