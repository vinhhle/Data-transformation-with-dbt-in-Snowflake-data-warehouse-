
  create or replace  view olist.olist_raw.order.customers
  
   as (
    WITH orders AS (
    SELECT * FROM olist.olist_raw.fact_orders
),
customers AS (
    SELECT * FROM olist.olist_raw.dim_customers
)
SELECT * FROM orders
LEFT JOIN customers USING (customer_id)
  );
