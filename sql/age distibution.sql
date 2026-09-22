select 
	CASE 
		when Age <= 30 then 'Young'
		when Age <= 50 then 'Middle Age'
		ELSE 'Old'
	END as age_group,
	count(*) as count_gender
from
	retail
group by
	age_group
ORDER BY 
	count_gender DESC;