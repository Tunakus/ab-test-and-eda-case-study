-- Task 2a – Genel EDA Özeti

-- Satır Sayısı ve Tarih Aralığı
SELECT
  country,
  COUNT(DISTINCT user_id) AS uniq_user,
  COUNT(*) AS row_count,
  COUNT(*) / COUNT(DISTINCT user_id) AS avg_activity_per_user
FROM vertigo_case.raw_all
GROUP BY country
ORDER BY row_count DESC
LIMIT 10;
