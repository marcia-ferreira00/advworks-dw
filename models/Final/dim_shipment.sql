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