-- Task 2b – Platform Dağılımı

SELECT
  platform,
  COUNT(*) AS row_count
FROM vertigo_case.raw_all
GROUP BY platform
ORDER BY row_count DESC;
