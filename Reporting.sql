select pr.product,sum(s.amount) as 'TotalAmount'
from sales s 
join products pr on pr.pid = s.pid
group by pr.product
order by 'TotalAmount' desc
limit 10;