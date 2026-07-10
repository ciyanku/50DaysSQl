SELECT
    b.contest_id,
    ROUND(
        COUNT(DISTINCT b.user_id) * 100 /
        (SELECT COUNT(*) FROM Users),
        2
    ) AS percentage
FROM Register b
GROUP BY b.contest_id
ORDER BY percentage DESC, b.contest_id ASC;
