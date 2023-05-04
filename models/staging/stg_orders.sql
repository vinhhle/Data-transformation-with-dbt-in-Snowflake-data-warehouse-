{{ config(materialized='view') }}

WITH stg_orders AS (SELECT * FROM OLIST.OLIST_RAW.ORDERS_RAW)
SELECT * FROM stg_orders