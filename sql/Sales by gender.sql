SELECT
	Gender,
	sum("Total Amount") as total_amount
FROM retail
GROUP BY Gender
ORDER BY total_amount desc;