WITH numbered_contacts AS (
    SELECT v.businessentityid AS vendor_id,
           v.accountnumber as account_number,
           v.name as vendor_name,
           v.creditrating as credit_rating,
           v.preferredvendorstatus as preferred_vendor_status,
           v.activeflag as active_flag,
           v.purchasingwebserviceurl as purchasing_web_service_url,
           v.modifieddate as modified_date
    FROM {{ source("purchasing", "vendor") }} v
)
SELECT *
FROM numbered_contacts
ORDER BY vendor_id