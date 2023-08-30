{{
  config(
      schema='staging_brooklyndata',
      alias='olist_sellers',
      materialized='view'
  )
}}

SELECT
    seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
FROM {{ source('brooklyndata', 'olist_sellers') }}
