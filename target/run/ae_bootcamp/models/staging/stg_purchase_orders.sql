

  create or replace table `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_purchase_orders`
  
  
  OPTIONS()
  as (
    with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`purchase_orders`
) 
select * from source
  );
    