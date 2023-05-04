
  create or replace  view olist.olist_raw.stg_sellers
  
   as (
    

WITH stg_sellers AS (SELECT * FROM OLIST.OLIST_RAW.SELLERS_RAW)
SELECT * FROM stg_sellers
  );
