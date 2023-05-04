{{ config(materialized='view') }}

WITH customers AS (
    SELECT * FROM {{ ref('stg_customers') }}
)
SELECT
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    INITCAP(customer_city) AS customer_city,
    CASE 
        WHEN customer_state = 'AC' THEN 'Acre'
        WHEN customer_state = 'AL' THEN 'Alagoas'
        WHEN customer_state = 'AP' THEN 'Amapá'
        WHEN customer_state = 'AM' THEN 'Amazonas'
        WHEN customer_state = 'BA' THEN 'Bahia'
        WHEN customer_state = 'CE' THEN 'Ceará'
        WHEN customer_state = 'DF' THEN 'Distrito Federal'
        WHEN customer_state = 'ES' THEN 'Espírito Santo'
        WHEN customer_state = 'GO' THEN 'Goiás'
        WHEN customer_state = 'MA' THEN 'Maranhão'
        WHEN customer_state = 'MT' THEN 'Mato Grosso'
        WHEN customer_state = 'MS' THEN 'Mato Grosso do Sul'
        WHEN customer_state = 'MG' THEN 'Minas Gerais'
        WHEN customer_state = 'PA' THEN 'Pará'
        WHEN customer_state = 'PB' THEN 'Paraíba'
        WHEN customer_state = 'PR' THEN 'Paraná'
        WHEN customer_state = 'PE' THEN 'Pernambuco'
        WHEN customer_state = 'PI' THEN 'Piauí'
        WHEN customer_state = 'RJ' THEN 'Rio de Janeiro'
        WHEN customer_state = 'RN' THEN 'Rio Grande do Norte'
        WHEN customer_state = 'RS' THEN 'Rio Grande do Sul'
        WHEN customer_state = 'RO' THEN 'Rondônia'
        WHEN customer_state = 'RR' THEN 'Roraima'
        WHEN customer_state = 'SC' THEN 'Santa Catarina'
        WHEN customer_state = 'SP' THEN 'São Paulo'
        WHEN customer_state = 'SE' THEN 'Sergipe'
    ELSE 'Tocantins'
    END AS customer_state
FROM customers