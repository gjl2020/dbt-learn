-- {{
--     config(
--         materialized='incremental',
--         unique_key='id'
--     )
-- }}

-- select
--     id as customer_id,
--     first_name,
--     last_name

-- from `dbt-tutorial`.jaffle_shop.customers

-- {% if is_incremental() %}

--   -- this filter will only be applied on an incremental run
--   where id > (select max(customer_id) from {{ this }})

-- {% endif %}