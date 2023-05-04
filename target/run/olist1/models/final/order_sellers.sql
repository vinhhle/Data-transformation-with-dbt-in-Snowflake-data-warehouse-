

      create or replace transient table olist.olist_raw.order_sellers  as
      (

WITH orders AS (
    SELECT * FROM olist.olist_raw.fact_orders
),
sellers AS (
    SELECT * FROM olist.olist_raw.dim_sellers
)
SELECT 
    orders.order_id,
    orders.seller_id,
    orders.order_status,
    orders.order_purchase_timestamp,
    orders.order_delivered_customer_date,
    orders.product_id,
    orders.price,
    orders.freight_cost,
    orders.product_category,
    sellers.seller_city,
    sellers.seller_state
FROM orders
LEFT JOIN sellers USING (seller_id)
      );
    