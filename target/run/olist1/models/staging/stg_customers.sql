
  create or replace  view olist.olist_raw.stg_customers
  
   as (
    

WITH stg_customers AS (SELECT * FROM OLIST.OLIST_RAW.CUSTOMERS_RAW)
SELECT * FROM stg_customers
  );
