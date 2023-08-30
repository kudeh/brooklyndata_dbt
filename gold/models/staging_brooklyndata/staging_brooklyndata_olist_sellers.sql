{{
  config(
      schema='staging_brooklyndata',
      alias='olist_sellers',
      materialized='view'
  )
}}

select *
from {{ source('brooklyndata', 'olist_sellers') }}
