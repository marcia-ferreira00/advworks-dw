{{ config(
    materialized='table'
) }}

select
    purchase_order_id,
    product_id,
    businessentityid,
    order_date,
    quantity,
    unit_price,
    total_price
from {{ source('public', 'fact_purchase') }}