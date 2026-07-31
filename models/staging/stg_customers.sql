SELECT
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix as customer_zip_code,
    TRIM(customer_city) as customer_city,
    TRIM(customer_state) as customer_state
FROM {{ source('raw','customers') }}