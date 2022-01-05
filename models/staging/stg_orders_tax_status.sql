with source as (
    select * from {{ source('northwood', 'orders_tax_status') }}
) 
select * from source