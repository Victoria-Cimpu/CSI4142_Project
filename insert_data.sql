COPY location(location_key, location_province, location_population, location_climate, location_gdp)
FROM 'C:\Users\Public\Location_data.csv'
DELIMITER ','
CSV HEADER;
SELECT * FROM location; 

COPY date(date_key, date_year, date_month, date_inflation)
FROM 'C:\Users\Public\Date_data.csv'
DELIMITER ','
CSV HEADER;
SELECT * FROM date; 

COPY product_nutrition(product_nutrition_key, pn_calories, pn_protein, pn_fat, pn_fiber, pn_sat_fat, pn_carb, pn_multiplier)
FROM 'C:\Users\Public\Nutrient_data.csv'
DELIMITER ','
CSV HEADER;
SELECT * FROM product_nutrition; 

COPY product(product_key, product_category, product_name, product_nutrition) 
FROM 'C:\Users\Public\Product_data.csv'
DELIMITER ','
CSV HEADER;
SELECT * FROM product; 

COPY fact_table(cost_can, quantity, product_key, date_key, location_key)
FROM 'C:\Users\Public\Fact_data.csv'
DELIMITER ','
CSV HEADER;
SELECT * FROM fact_table; 