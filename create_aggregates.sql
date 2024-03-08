-- Price per category per province by month  
CREATE VIEW Price_by_category AS 
SELECT P.product_category, L.location_province, D.date_month, D.date_year, 
AVG(F.cost_can) AS AvgCost
FROM product P, date D, location L, fact_table F
WHERE 
	P.product_key = F.product_key AND
	D.date_key = F.date_key AND
	L.location_key = F.location_key
GROUP BY 
	P.product_category, L.location_province, D.date_month, D.date_year;
	
SELECT * FROM Price_by_category ORDER BY product_category, location_province, date_month, date_year;

-- Yearly price per product by province 
CREATE VIEW Price_by_year AS 
SELECT D.date_year, P.product_name, L.location_province,
AVG(F.cost_can) AS AvgCost
FROM product P, date D, location L, fact_table F
WHERE 
	P.product_key = F.product_key AND
	D.date_key = F.date_key AND
	L.location_key = F.location_key
GROUP BY 
	D.date_year, P.product_name, L.location_province;
	
SELECT * FROM Price_by_year ORDER BY date_year;