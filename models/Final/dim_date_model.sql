select
    date_key as sk_date,
    date,
    day_name,
    day_name_abbrev,
    day_of_month,
    day_of_week,
    day_of_year,
    fiscal_month_number,
    fiscal_year,
    holiday_name,
    is_holiday,
    is_weekday,
    is_weekend,
    month_abbrev,
    month_end_flag,
    month_name,
    month_number,
    quarter,
    quarter_name,
    quarter_short_name,
    same_day_previous_year,
    same_day_previous_year_key,
    season,
    week_begin_date,
    week_begin_date_key,
    week_num_in_month,
    week_num_in_year,
    year,
    year_and_month,
    year_and_month_abbrev,
    year_and_quarter
<<<<<<< HEAD
from {{ ref("stg_dim_date") }}

=======
from {{ ref ("stg_dim_date") }}
>>>>>>> 531ca9f52072891edee6dbff3b21ad5aa0f3ddb2
