with source as (
    select 
    cast(supplier_ids as integer) as supplier_id,
    * 
    except (supplier_ids)
    from `datatonic-analytics-sandbox`.`dl_northwood`.`products`
    where supplier_ids not like "%;%"
) 
select *,
current_timestamp() as ingestion_timestamp

from source