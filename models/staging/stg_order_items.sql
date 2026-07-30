SELECT 
order_id,
order_items,
product_id,
seller_id,
shipping_limit_date,
price,
freight_value
FROM {{source('raw','order_items')}}