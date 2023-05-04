
  create or replace  view olist.olist_raw.my_second_dbt_model
  
   as (
    -- Use the `ref` function to select from other models

select *
from olist.olist_raw.my_first_dbt_model
where id = 1
  );
