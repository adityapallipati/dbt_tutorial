
  create or replace   view airbnb.dev.src_hosts
  
   as (
    WITH raw_hosts AS (
    select * from airbnb.raw.raw_hosts
)

SELECT
    id as host_id,
    name as host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts
  );

