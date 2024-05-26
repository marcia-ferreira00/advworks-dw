select
    dbt_scd_id as sk_employee,
    employee_id,
    job_title,
    gender,
    vacation_hours,
    sick_leave_hours,
    person_row_guid
from {{ref('sp_employee')}}