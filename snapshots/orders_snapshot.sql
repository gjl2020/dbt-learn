-- {% snapshot orders_snapshot %}

-- {{
--     config(
--       target_schema='snapshots',
--       unique_key='id',

--       strategy='timestamp',
--       updated_at='order_date',
--     )
-- }}

-- select * from `dbt-tutorial`.jaffle_shop.orders

-- {% endsnapshot %}