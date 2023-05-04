
  create or replace  view olist.olist_raw.stg_orders
  
   as (
    

WITH stg_orders AS (SELECT * FROM OLIST.OLIST_RAW.ORDERS_RAW)
SELECT * FROM stg_orders
  );
