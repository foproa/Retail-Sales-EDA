select 
	date_trunc('week', Date)::date as week,
	sum("Total Amount") as total_amount
from retail
group by week
order by total_amount desc;
