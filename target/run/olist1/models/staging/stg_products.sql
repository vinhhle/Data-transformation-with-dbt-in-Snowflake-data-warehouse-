
  create or replace  view olist.olist_raw.stg_products
  
   as (
    

WITH stg_products AS (SELECT * FROM OLIST.OLIST_RAW.PRODUCTS_RAW)
SELECT * FROM stg_products
  );
