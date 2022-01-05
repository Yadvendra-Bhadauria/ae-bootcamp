with source as (
    select * from {{ source('northwood', 'shippers') }}
) 
select * from source