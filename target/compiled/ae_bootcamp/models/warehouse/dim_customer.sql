with source as (
    select 
    id as customer_id,
    *
    except
        (id),
From `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_customer`
), 
unique_source as (
    select *, row_number() over (partition by customer_id) as row_number
    from source
)

select *
except
    (row_number),
from unique_source
where row_number =1