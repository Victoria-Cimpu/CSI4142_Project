-- CREATE tables 
CREATE TABLE date (
	date_key 			SERIAL PRIMARY KEY,
	date_year     		INT,
	date_month			INT,
	date_inflation		DECIMAL
);

CREATE TABLE location (
	location_key		SERIAL PRIMARY KEY,
	location_province	VARCHAR(100),
	location_population INT, 
	location_climate 	VARCHAR(100),
	location_GDP		DECIMAL
); 

CREATE TABLE product_nutrition (
	product_nutrition_key	SERIAL PRIMARY KEY,
	pn_calories			DECIMAL,
	pn_fiber			DECIMAL, 
	pn_protein 			DECIMAL,
	pn_fat				DECIMAL,
	pn_sat_fat			DECIMAL,
	pn_carb				DECIMAL,
	pn_multiplier		DECIMAL
);

CREATE TABLE product (
	product_key			SERIAL PRIMARY KEY,
	product_category	VARCHAR(100),
	product_name		VARCHAR(100), 
	product_nutrition 	INT
); 

CREATE TABLE fact_table (
	product_key 	INT NOT NULL references product(product_key),
	date_key		INT NOT NULL references date(date_key),
	location_key	INT NOT NULL references location(location_key),
	quantity	 	DECIMAL NOT NULL,
	cost_CAN	 	DECIMAL NOT NULL,
	PRIMARY KEY(product_key, date_key, location_key)
);


