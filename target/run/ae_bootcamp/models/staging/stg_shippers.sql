

  create or replace table `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_shippers`
  
  
  OPTIONS()
  as (
    with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`shippers`
) 
select * from source
  );
    