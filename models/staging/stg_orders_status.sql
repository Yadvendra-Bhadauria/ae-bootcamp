with source as (
    select * from {{ source('northwood', 'orders_status') }}
) 
select * from source