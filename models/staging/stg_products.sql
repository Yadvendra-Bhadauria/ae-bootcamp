with source as (
    select * from {{ source('northwood', 'products') }}
) 
select * from source