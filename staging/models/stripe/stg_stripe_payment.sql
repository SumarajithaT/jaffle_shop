select *
from {{ source('stripe', 'PAYMENTS') }}