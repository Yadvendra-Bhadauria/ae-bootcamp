

  create or replace table `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_invoices`
  
  
  OPTIONS()
  as (
    with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`invoices`
) 
select * from source
  );
    