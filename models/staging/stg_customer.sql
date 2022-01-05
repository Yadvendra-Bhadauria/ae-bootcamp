with source as (
    select * from {{ source('northwood', 'customer') }}
) 
select * from source