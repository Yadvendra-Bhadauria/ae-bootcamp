with source as (
    select * from {{ source('northwood', 'order_details_status') }}
) 
select * from source