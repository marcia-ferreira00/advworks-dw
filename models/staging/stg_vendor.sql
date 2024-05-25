with
    product as (
        select
            productid as product_id,
            name as product_name,
            productnumber as product_number,
            productsubcategoryid as product_subcategoryid,
            color as color,
            size as size,
            weight as weight
        from {{ source('production', 'product') }}
    ),

    subcategory as (
        select productsubcategoryid, name as subcategory_name, productcategoryid
        from {{ source('production', 'productsubcategory') }}
    ),

    category as (
        select productcategoryid, name as category_name
        from {{ source('production', 'productcategory') }}
    )

select
    p.product_id,
    p.product_name,
    p.product_number,
    c.category_name,
    s.subcategory_name,
    p.size,
    p.color,
    p.weight
from product p
left join subcategory s on p.product_subcategoryid = s.productsubcategoryid
left join category c on s.productcategoryid = c.productcategoryid