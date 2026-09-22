with t1 as(
select 
	"Total Amount",
	case 
		when age <= 30 then 'Young'
		when age <= 50 then 'Middle Age'
		else 'Old'
	end as age_group
from
	retail
)
select
	age_group,
	sum("Total Amount") as total_amount
from t1
group by age_group
order by total_amount desc;