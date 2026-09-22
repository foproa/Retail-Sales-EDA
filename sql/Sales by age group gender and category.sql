with t1 as(
select 
	"Total Amount",
	Gender,
	"Product Category" as product_category,
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
	Gender,
	product_category,
	sum("Total Amount") as total_amount
from t1
group by age_group, Gender, product_category
order by total_amount desc;