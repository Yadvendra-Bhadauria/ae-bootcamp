with source as (
    select * from {{ source('northwood', 'employee_privileges') }}
) 
select 
    *, 
    current_timestamp() as ingestion_timestamp
from source