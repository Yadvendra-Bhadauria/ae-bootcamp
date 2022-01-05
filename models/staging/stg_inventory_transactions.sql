with source as (
    select * from {{ source('northwood', 'inventory_transactions') }}
) 
select * from source