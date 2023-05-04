
    
    

select
    order_id as unique_field,
    count(*) as n_records

from olist.olist_raw.stg_order_items
where order_id is not null
group by order_id
having count(*) > 1


