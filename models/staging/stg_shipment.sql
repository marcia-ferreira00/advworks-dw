select
    shipmethodid as shipment_id,
    name,
    shipbase as min_ship_charge,
    shiprate as pound_ship_charge,
    modifieddate as modified_date
from {{ source("purchasing", "shipmethod") }}
