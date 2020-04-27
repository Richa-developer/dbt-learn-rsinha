with stg_orders as 
(
select 
    c.customer_id,
    o.order_id
from 
{{ref('customers')}} c
left join {{ref('orders')}} o
on c.customer_id = o.customer_id
)

select * from stg_orders