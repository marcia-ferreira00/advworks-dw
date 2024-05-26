<<<<<<< HEAD
    with first_version as (
    select  ship_method_id,
            ship_name,
            ship_base,
            ship_rate
    from {{ ref('sp_shipment') }}
)
select
    ship_method_id,
    ship_name,
    ship_base,
    ship_rate
from first_version
=======

{{
    config(
        target_schema='snapshots',
        unique_key='ship_method_id',
        strategy='timestamp',
        updated_at='modified_date'
    )
}}    

select 
    dbt_scd_id as ship_method_id,
    shipment_id,
    timestamp,
    purchasing
from {{ ref('sp_shipment') }}
>>>>>>> 531ca9f52072891edee6dbff3b21ad5aa0f3ddb2
