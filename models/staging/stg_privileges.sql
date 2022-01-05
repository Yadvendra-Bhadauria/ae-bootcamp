with source as (
    select * from {{ source('northwood', 'privileges') }}
) 
select * from source