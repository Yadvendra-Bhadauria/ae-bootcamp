with source as (
    select * from {{ source('northwood', 'inventory_transaction_types') }}
) 
select * from source