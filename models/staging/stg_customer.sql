with source as (
    select * from {{ source('northwood', 'customer') }}
) 
select 
    *, current_timestamp() as ingestion_timestamp
 from source