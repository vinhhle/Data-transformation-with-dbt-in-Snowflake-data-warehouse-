{{ config(materialized='view') }}

WITH stg_products AS (SELECT * FROM OLIST.OLIST_RAW.PRODUCTS_RAW)
SELECT * FROM stg_products