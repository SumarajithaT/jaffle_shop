select
    order_id,
    sum(amount) as total_amount
from {{ ref('staging', 'stripe', 'stg_stripe_payment') }}
group by 1
having total_amount < 0