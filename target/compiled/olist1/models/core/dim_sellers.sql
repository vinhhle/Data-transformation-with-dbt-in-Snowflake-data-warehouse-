

WITH sellers AS (
    SELECT * FROM olist.olist_raw.stg_sellers
)
SELECT
    seller_id,
    seller_zip_code_prefix,
    initcap(seller_city) AS seller_city,
    CASE 
        WHEN seller_state = 'AC' THEN 'Acre'
        WHEN seller_state = 'AL' THEN 'Alagoas'
        WHEN seller_state = 'AP' THEN 'Amapá'
        WHEN seller_state = 'AM' THEN 'Amazonas'
        WHEN seller_state = 'BA' THEN 'Bahia'
        WHEN seller_state = 'CE' THEN 'Ceará'
        WHEN seller_state = 'DF' THEN 'Distrito Federal'
        WHEN seller_state = 'ES' THEN 'Espírito Santo'
        WHEN seller_state = 'GO' THEN 'Goiás'
        WHEN seller_state = 'MA' THEN 'Maranhão'
        WHEN seller_state = 'MT' THEN 'Mato Grosso'
        WHEN seller_state = 'MS' THEN 'Mato Grosso do Sul'
        WHEN seller_state = 'MG' THEN 'Minas Gerais'
        WHEN seller_state = 'PA' THEN 'Pará'
        WHEN seller_state = 'PB' THEN 'Paraíba'
        WHEN seller_state = 'PR' THEN 'Paraná'
        WHEN seller_state = 'PE' THEN 'Pernambuco'
        WHEN seller_state = 'PI' THEN 'Piauí'
        WHEN seller_state = 'RJ' THEN 'Rio de Janeiro'
        WHEN seller_state = 'RN' THEN 'Rio Grande do Norte'
        WHEN seller_state = 'RS' THEN 'Rio Grande do Sul'
        WHEN seller_state = 'RO' THEN 'Rondônia'
        WHEN seller_state = 'RR' THEN 'Roraima'
        WHEN seller_state = 'SC' THEN 'Santa Catarina'
        WHEN seller_state = 'SP' THEN 'São Paulo'
        WHEN seller_state = 'SE' THEN 'Sergipe'
    ELSE 'Tocantins'
    END AS seller_state
FROM sellers