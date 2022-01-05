

  create or replace table `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_inventory_transaction_types`
  
  
  OPTIONS()
  as (
    with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`inventory_transaction_types`
) 
select * from source
  );
    