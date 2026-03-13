{{ config(materialized='view') }}
-- Fixed version
select distinct id
from {{ ref('my_first_dbt_model') }}
where id is not null 
  and id = 1
