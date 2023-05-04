select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        customer_state as value_field,
        count(*) as n_records

    from olist.olist_raw.stg_customers
    group by customer_state

)

select *
from all_values
where value_field not in (
    'AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RN','RS','RJ','RO','RR','SC','SP','SE','TO'
)



      
    ) dbt_internal_test