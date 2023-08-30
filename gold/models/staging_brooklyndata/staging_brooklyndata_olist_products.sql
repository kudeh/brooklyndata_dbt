{{
  config(
      schema='staging_brooklyndata',
      alias='olist_products',
      materialized='view'
  )
}}

select *
from {{ source('brooklyndata', 'olist_products') }}
