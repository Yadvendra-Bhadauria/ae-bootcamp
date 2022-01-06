with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`employee_privileges`
) 
select 
    *, 
    current_timestamp() as ingestion_timestamp
from source