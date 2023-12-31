{{
  config(
      schema='staging_brooklyndata',
      alias='olist_order_reviews',
      materialized='view'
  )
}}

SELECT
    review_id,
    order_id,
    review_score,
    review_comment_title,
    review_comment_message,
    review_creation_date,
    review_answer_timestamp
FROM {{ source('brooklyndata', 'olist_order_reviews') }}
QUALIFY ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY review_answer_timestamp DESC) = 1 -- take latest review for order
