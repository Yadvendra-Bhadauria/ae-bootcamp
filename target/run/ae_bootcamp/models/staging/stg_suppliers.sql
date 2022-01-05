

  create or replace table `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_suppliers`
  
  
  OPTIONS()
  as (
    with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`suppliers`
) 
select * from source
  );
    