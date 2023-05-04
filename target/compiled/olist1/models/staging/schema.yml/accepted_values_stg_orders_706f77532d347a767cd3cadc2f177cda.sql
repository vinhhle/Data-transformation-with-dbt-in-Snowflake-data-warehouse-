
    
    

with all_values as (

    select
        order_status as value_field,
        count(*) as n_records

    from olist.olist_raw.stg_orders
    group by order_status

)

select *
from all_values
where value_field not in (
    'delivered','invoiced','shipped','processing','unavailable','canceled','created','approved'
)


