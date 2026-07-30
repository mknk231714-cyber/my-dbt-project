SELECT
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    order_estimated_delivery_date,
    CASE
        WHEN order_delivered_carrier_date < order_approved_at THEN TRUE
        ELSE FALSE
    END AS carrier_date_before_approved_date_flag
FROM {{sources('raw'.'orders')}}