with source as (
    select * from {{ source('northwood', 'strings') }}
) 
select * from source