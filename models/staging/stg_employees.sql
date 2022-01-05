with source as (
    select * from {{ source('northwood', 'employees') }}
) 
select * from source