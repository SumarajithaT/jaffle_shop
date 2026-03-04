with renamed as (
    select
        id as customer_id,
        first_name,
        last_name
    from {{ source('jaffle_shop', 'customers') }}  -- <- THIS IS WHERE you use it
)

select *
from renamed