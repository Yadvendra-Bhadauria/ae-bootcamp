with source as (
    select * from {{ source('northwood', 'purchase_order_details') }}
) 
select * from source