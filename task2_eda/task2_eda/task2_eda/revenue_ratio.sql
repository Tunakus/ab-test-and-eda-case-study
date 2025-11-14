-- Task 2d – Gelir İçeren Kayıt Oranı

SELECT
  COUNTIF(iap_revenue > 0) AS inapp_rows,
  COUNTIF(ad_revenue > 0) AS ad_rows,
  COUNT(*) AS total_rows,
  ROUND(COUNTIF(iap_revenue > 0) / COUNT(*) * 100, 2) AS iap_rate,
  ROUND(COUNTIF(ad_revenue > 0) / COUNT(*) * 100, 2) AS ad_rate
FROM vertigo_case.raw_all;
