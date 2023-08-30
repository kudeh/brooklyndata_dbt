{{
  config(
      schema='staging_brooklyndata',
      alias='olist_orders',
      materialized='view'
  )
}}

select *
from {{ source('brooklyndata', 'olist_orders') }}
