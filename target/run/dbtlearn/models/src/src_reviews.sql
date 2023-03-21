
  create or replace   view airbnb.dev.src_reviews
  
   as (
    WITH raw_reviews AS (
    select * from airbnb.raw.raw_reviews
)

SELECT
    listing_id,
    date as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
FROM
    raw_reviews
  );

