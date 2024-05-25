{% snapshot sp_product %}

{{
    config(
        target_schema='snapshots',
        unique_key='product_id',
        strategy='timestamp',
        updated_at='modified_date'
    )
}}

select
    *
from {{ ref('stg_product') }}

{% endsnapshot %}