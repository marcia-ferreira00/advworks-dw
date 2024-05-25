{% snapshot sp_employee %}

{{
    config(
        target_schema='snapshots',
        unique_key='employee_id',
        strategy='check',
        check_cols=['job_title', 'gender', 'vacation_hours', 'sick_leave_hours', 'person_row_guid']
    )
}}

select
    *
from {{ ref('stg_employee') }}

{% endsnapshot %}
