with purchaseorderheader as (
    select 
        purchaseorderid as purchase_id,
        vendorid as vendor_id,
        employeeid as employee_id,
        orderdate as order_date,
        status as ship_status,
        shipmethodid as shipment_method_id,
        shipdate as shipment_date
      
    from 
        {{ source('purchasing', 'purchaseorderheader') }}
),

purchaseorderdetail as (
    select 
        purchaseorderid,
        productid as product_id
    from 
        {{ source('purchasing', 'purchaseorderdetail') }}
)

select 
    poh.purchase_id,
    poh.vendor_id,
    poh.employee_id,
    pod.product_id,
    poh.shipment_method_id,
    poh.order_date,
    poh.ship_status,
    poh.shipment_date
from 
    purchaseorderheader poh
    left join purchaseorderdetail pod on poh.purchase_id = pod.purchaseorderid