-- CREATE tables 
CREATE TABLE date (
	date_key 			SERIAL PRIMARY KEY,
	date_year     		INT,
	date_month			INT,
	date_month_name		VARCHAR(30),
	date_inflation		DECIMAL
);

CREATE TABLE location (
	location_key		SERIAL PRIMARY KEY,
	location_province	VARCHAR(100),
	location_population INT, 
	location_climate 	VARCHAR(100),
	location_GDP		INT
); 

CREATE TABLE product_nutrition (
	product_nutrition_key	SERIAL PRIMARY KEY,
	pn_calories			INT,
	pn_fiber			INT, 
	pn_starch			INT,
	pn_glucose 			INT,
	pn_lcatose			INT,
	pn_water			INT,
	pn_protein 			INT,
	pn_calcium			INT,
	pn_fat				INT,
	pn_sugar			INT
); 

CREATE TABLE product (
	product_key			SERIAL PRIMARY KEY,
	product_category	VARCHAR(100),
	product_name		VARCHAR(100), 
	product_nutrition 	INT
); 

CREATE TABLE production_fact_table (
	product_key 	INT NOT NULL UNIQUE references product(product_key),
	date_key		INT NOT NULL UNIQUE references date(date_key),
	location_key	INT NOT NULL UNIQUE references location(location_key),
	quantity	 	DECIMAL NOT NULL,
	cost_CAN	 	DECIMAL NOT NULL,
	PRIMARY KEY(product_key, date_key, location_key)
);


