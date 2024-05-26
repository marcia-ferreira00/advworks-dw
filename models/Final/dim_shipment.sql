
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