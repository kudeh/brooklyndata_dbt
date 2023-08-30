{{
  config(
      schema='staging_brooklyndata',
      alias='olist_geolocation',
      materialized='view'
  )
}}

SELECT
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
FROM {{ source('brooklyndata', 'olist_geolocation') }}
