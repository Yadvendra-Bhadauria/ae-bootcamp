with source as (
    select * from {{ source('northwood', 'employee_privileges') }}
) 
select * from source