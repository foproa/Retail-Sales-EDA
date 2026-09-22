select 
	"Product Category" as product_category, 
	sum("Total Amount") as total_amount
from retail
group by product_category;