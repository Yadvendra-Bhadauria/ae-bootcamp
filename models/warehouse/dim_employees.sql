with source as (
    select 
    id as employee_id,
    *
    except
        (id),
From {{ ref('stg_employees') }}
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