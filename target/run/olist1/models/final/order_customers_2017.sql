

      create or replace transient table olist.olist_raw.order_customers_2017  as
      (

WITH orders AS (
    SELECT * FROM olist.olist_raw.fact_orders
),
customers AS (
    SELECT * FROM olist.olist_raw.dim_customers
)
SELECT 
    orders.order_id,
    orders.order_status,
    orders.purchased_date,
    orders.delivered_date,
    orders.total_delivery_day,
    orders.product_id,
    orders.item_number,
    orders.price_per_item_USD,
    orders.total_price,
    orders.freight_USD,
    orders.product_category_upper AS product_category,
    customers.customer_unique_id,
    customers.customer_zip_code_prefix,
    customers.customer_city,
    customers.customer_state
FROM orders
LEFT JOIN customers USING (customer_id)
WHERE orders.purchased_date BETWEEN '2017-01-01' AND '2017-12-31'
ORDER BY orders.purchased_date ASC
      );
    