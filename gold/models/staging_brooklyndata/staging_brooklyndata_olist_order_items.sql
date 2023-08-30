{{
  config(
      schema='staging_brooklyndata',
      alias='olist_order_items',
      materialized='view'
  )
}}

SELECT
    CONCAT(order_id, '-', order_item_id) AS _key,
    order_id,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date,
    price,
    freight_value
FROM {{ source('brooklyndata', 'olist_order_items') }}
