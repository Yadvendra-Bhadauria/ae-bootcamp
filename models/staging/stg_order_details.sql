with source as (
    select * from {{ source('northwood', 'order_details') }}
) 
select * from source