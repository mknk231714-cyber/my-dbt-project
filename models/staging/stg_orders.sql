SELECT
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp as purchase_time,
    order_approved_at as order_approval_time,
    order_delivered_carrier_date as carrier_delivered_time,
    order_delivered_customer_date as customer_delivered_time,
    order_estimated_delivery_date as estimated_delivery_date
FROM {{source('raw','orders')}}
WHERE order_id IS NOT NULL