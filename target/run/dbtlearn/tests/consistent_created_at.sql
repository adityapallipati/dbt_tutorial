select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
    *
FROM
    airbnb.dev.fct_reviews
LEFT JOIN airbnb.dev.dim_listings_cleansed ON fct_reviews.listing_id = dim_listings_cleansed.listing_id
WHERE fct_reviews.review_date < dim_listings_cleansed.created_at
ORDER BY fct_reviews.review_date
LIMIT 10
      
    ) dbt_internal_test