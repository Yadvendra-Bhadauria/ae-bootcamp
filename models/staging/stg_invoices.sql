with source as (
    select * from {{ source('northwood', 'invoices') }}
) 
select * from source