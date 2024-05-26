with first_version as ( 
    SELECT  vendor_id,
            account_number,
            vendor_name,
            credit_rating,
            preferred_vendor_status,
            active_flag,
            purchasing_web_service_url,
            modified_date
    FROM {{ ref('sp_vendor') }}
)
SELECT vendor_id,
       account_number,
       vendor_name,
       credit_rating,
       preferred_vendor_status,
       active_flag,
       purchasing_web_service_url,
       modified_date 
from first_version