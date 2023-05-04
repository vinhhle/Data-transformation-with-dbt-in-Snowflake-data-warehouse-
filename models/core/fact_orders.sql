{{ config(materialized='view') }}

WITH orders AS (
    SELECT * FROM {{ ref('stg_orders') }}
),
items AS (
    SELECT * FROM {{ ref('stg_order_items') }}
),
products AS (
    SELECT * FROM {{ ref('stg_products') }}
)
SELECT 
    orders.order_id,
    orders.customer_id,
    orders.order_status,
    CAST(orders.order_purchase_timestamp AS DATE) AS purchased_date,
    CAST(orders.order_delivered_customer_date AS DATE) AS delivered_date,
    ABS(DATEDIFF(DAY, delivered_date,purchased_date)) AS total_delivery_day,
    items.product_id,
    items.order_item_id AS item_number,
    items.price*0.3 AS price_per_item_USD,
    item_number*price_per_item_USD AS total_price,
    items.freight_value*0.3 AS freight_USD,
    REPLACE(products.product_category_name_english,'_',' ') AS product_category,
    CONCAT(UPPER(LEFT(product_category,1)), LOWER(RIGHT(product_category, LENGTH(product_category)-1))) AS product_category_upper
FROM orders 
LEFT JOIN items USING (order_id) 
LEFT JOIN products USING (product_id)