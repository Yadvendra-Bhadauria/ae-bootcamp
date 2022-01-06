

  create or replace table `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_employees`
  
  
  OPTIONS()
  as (
    with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`employees`
) 
select 
    *, 
    current_timestamp() as ingestion_timestamp
from source
  );
    