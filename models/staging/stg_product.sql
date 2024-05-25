with product as (
    select 
        productid as product_id,
        name as product_name,
        productnumber as product_number,
        color,
        size,
        weight,
        productsubcategoryid
    from 
        {{ source('production', 'product') }}
),

subcategory as (
    select 
        productsubcategoryid,
        name as subcategory,
        productcategoryid
    from 
        {{ source('production', 'productsubcategory') }}
),

category as (
    select 
        productcategoryid,
        name as category
    from 
        {{ source('production', 'productcategory') }}
)

select 
    p.product_id,
    p.product_name,
    p.product_number,
    c.category,
    s.subcategory,
    p.color,
    p.size,
    p.weight
from 
    product p
    left join subcategory s on p.productsubcategoryid = s.productsubcategoryid
    left join category c on s.productcategoryid = c.productcategoryid
