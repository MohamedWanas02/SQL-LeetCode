select v.customer_id, count(v.visit_id) as count_no_trans
from Visits v left join Transactions t
using(visit_id)
where t.Transaction_id is null
group by customer_id
