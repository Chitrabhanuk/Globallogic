{{
  config(
    materialized = "view",
  )
}}
select
        c_custkey as customer_id,
        c_nationkey as nation_id,
        c_name as customer_name,
        c_address as address,
        c_phone as phone_number,
        c_acctbal as account_balance,
        c_mktsegment as market_segment,
        c_comment as comment
from {{ source('src','customers') }} as c 
join {{ source('src','nations') }} as n
on c.c_nation_id =n.c_nation_id
join {{ source('src','regions') }}  as r
on n.region_id=r.region_id