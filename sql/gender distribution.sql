select 
	Gender, 
	count(*) as count_gender
from retail
group by Gender;