{{ config(materialized='view') }}

WITH stg_order_items AS (SELECT * FROM OLIST.OLIST_RAW.ORDER_ITEMS_RAW)
SELECT * FROM stg_order_items