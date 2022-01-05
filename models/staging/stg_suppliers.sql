with source as (
    select * from {{ source('northwood', 'suppliers') }}
) 
select * from source