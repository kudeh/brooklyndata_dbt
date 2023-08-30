{{
  config(
      schema='staging_brooklyndata',
      alias='olist_order_customer',
      materialized='view'
  )
}}

SELECT 
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state
FROM {{ source('brooklyndata', 'olist_order_customer') }}
