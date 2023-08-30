{{
  config(
      schema='staging_brooklyndata',
      alias='olist_order_payments',
      materialized='view'
  )
}}

SELECT
    order_id,
    payment_sequential,
    payment_type,
    payment_installments,
    payment_value
FROM {{ source('brooklyndata', 'olist_order_payments') }}
