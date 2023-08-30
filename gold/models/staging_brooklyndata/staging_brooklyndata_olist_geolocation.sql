{{
  config(
      schema='staging_brooklyndata',
      alias='olist_geolocation',
      materialized='view'
  )
}}

select *
from {{ source('brooklyndata', 'olist_geolocation') }}
