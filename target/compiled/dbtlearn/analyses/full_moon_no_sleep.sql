WITH mart_full_moon_reviews AS (
    SELECT * FROM airbnb.dev.mart_full_moon_reviews
)
SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) as reviews
FROM
    mart_full_moon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment