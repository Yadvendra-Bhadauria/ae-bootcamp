with source as (
    select * from {{ source('northwood', 'orders') }}
) 
select * from source