SELECT
order_id,
payment_sequential as payment_number,
payment_type,
payment_installments as total_payment_installments,
payment_value
FROM {{source('raw','order_payments')}}