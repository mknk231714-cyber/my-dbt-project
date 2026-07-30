SELECT
product_category_name,
product_category_name_english
FROM {{sources('raw'.'product_category_translation')}}