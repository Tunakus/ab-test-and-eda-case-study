-- Task 1b – 15. Güne Kadar Hangi Varyant Daha Fazla Para Kazanmıştır?

SELECT
    p.var,
    ROUND(20000 *
        (15*p.d1 + 27*p.d3 + 42*p.d7 + 36*p.d14) *
        (p.pr + p.imp * p.ecpm / 1000.0), 2) AS total_money_to_day15
FROM (
    SELECT 'A' AS var,
           0.0305 AS pr, 2.3 AS imp, 9.8 AS ecpm,
           0.53 AS d1, 0.27 AS d3, 0.17 AS d7, 0.06 AS d14
    UNION ALL
    SELECT 'B',
           0.0315, 1.6, 10.8,
           0.48, 0.25, 0.19, 0.09
) AS p;
