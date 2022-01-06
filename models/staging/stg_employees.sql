with source as (
    select * from {{ source('northwood', 'employees') }}
) 
select 
    *, 
    current_timestamp() as ingestion_timestamp
from source