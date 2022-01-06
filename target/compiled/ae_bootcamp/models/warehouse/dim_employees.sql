with source as (
    select 
    id as employee_id,
    *
    except
        (id),
From `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_employees`
), 
unique_source as (
    select *, row_number() over (partition by employee_id) as row_number
    from source
)

select *
except
    (row_number),
from unique_source
where row_number =1