{{
  config(
      schema='staging_brooklyndata',
      alias='olist_order_items',
      materialized='view'
  )
}}

select *
from {{ source('brooklyndata', 'olist_order_items') }}
