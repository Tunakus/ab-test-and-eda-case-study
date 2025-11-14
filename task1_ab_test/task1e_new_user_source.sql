-- Task 1e – Yeni Kullanıcı Kaynağı (Day-20 Sonrası) Etkisi

SELECT
    p.var,
    CASE
        WHEN p.var = 'A' THEN
            ROUND(
                (20000 + 10000) *
                (30*p.d1 + 54*p.d3 + 84*p.d7 + 72*p.d14) *
                (p.pr + p.imp * p.ecpm / 1000.0),
                2
            )
        ELSE
            ROUND(
                20000 *
                (30*p.d1 + 54*p.d3 + 84*p.d7 + 72*p.d14) *
                (p.pr + p.imp * p.ecpm / 1000.0),
                2
            )
    END AS total_money_with_new_source
FROM (
    SELECT 'A' AS var,
           0.0305 AS pr, 2.3 AS imp, 9.8 AS ecpm,
           0.53 AS d1, 0.27 AS d3, 0.17 AS d7, 0.06 AS d14
    UNION ALL
    SELECT 'B',
           0.0315, 1.6, 10.8,
           0.48, 0.25, 0.19, 0.09
) AS p;
