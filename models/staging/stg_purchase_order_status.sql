with source as (
    select * from {{ source('northwood', 'purchase_order_status') }}
) 
select * from source