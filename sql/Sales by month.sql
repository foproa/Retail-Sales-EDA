select 
	date_trunc('month', Date)::date as month,
	sum("Total Amount") as total_amount
from retail
group by month
order by total_amount desc;