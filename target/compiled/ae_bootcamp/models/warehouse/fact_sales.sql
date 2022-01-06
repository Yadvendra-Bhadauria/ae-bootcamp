

  with source as (
    select 
        od.order_id,
        od.product_id,
        o.customer_id,
        o.employee_id,
        o.shipper_id,
        od.quantity,
        od.unit_price,
        od.discount,
        od.status_id,
        od.date_allocated,
        od.purchase_order_id,
        od.inventory_id,
        o.shipped_date,
        date(o.order_date) as order_date,
        o.paid_date,
        current_timestamp() as insertion_timestamp,
    From `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_orders` o
    left join `datatonic-analytics-sandbox`.`dl_northwood_stg_northwind`.`stg_order_details` od
    on od.order_id = o.id
    where od.order_id is not null

), 
unique_source as (
    select *, row_number() over (partition by product_id, customer_id, employee_id, order_id, shipper_id, purchase_order_id, order_date ) as row_number
    from source
)

select *
except
    (row_number),
from unique_source
where row_number =1