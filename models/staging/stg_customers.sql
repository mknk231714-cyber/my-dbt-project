SELECT
customer_id, --per order
customer_unique_id, -- per customer
customer_zip_code_prefix as zip_code,
TRIM(customer_city) as city,
TRIM(customer_state) as states
FROM {{source('raw','customers')}}