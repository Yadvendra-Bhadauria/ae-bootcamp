with source as (
    select * from {{ source('northwood', 'purchase_orders') }}
) 
select * from source