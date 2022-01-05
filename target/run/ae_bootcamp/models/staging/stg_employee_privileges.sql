

  create or replace table `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_employee_privileges`
  
  
  OPTIONS()
  as (
    with source as (
    select * from `datatonic-analytics-sandbox`.`dl_northwood`.`employee_privileges`
) 
select * from source
  );
    