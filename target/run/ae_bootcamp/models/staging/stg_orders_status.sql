

  create or replace table `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_orders_status`
  
  
  OPTIONS()
  as (
    with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`orders_status`
) 
select * from source
  );
    