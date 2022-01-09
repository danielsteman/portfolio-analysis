CREATE TABLE IF NOT EXISTS degiro_portfolio (
	id serial PRIMARY KEY,
	product_id INT,
	position_type VARCHAR(20),
	position_size INT,
	product_price FLOAT,
	total_product_value FLOAT,
	pl_base FLOAT,
	breakeven_price FLOAT,
	product_name VARCHAR(100),
	product_isin VARCHAR(12),
	product_symbol VARCHAR(4),
	product_type VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS degiro_portfolio_mapping (
	id serial PRIMARY KEY,
	product_id VARCHAR(25),
	position_type VARCHAR(25),
	position_size VARCHAR(25),
	product_price VARCHAR(25),
	total_product_value VARCHAR(25),
	pl_base VARCHAR(25),
	breakeven_price VARCHAR(25),
	product_name VARCHAR(25),
	product_isin VARCHAR(25),
	product_symbol VARCHAR(25),
	product_type VARCHAR(25)
);

INSERT INTO degiro_portfolio_mapping(
	product_id,
	position_type,
	position_size,
	product_price,
	total_product_value,
	pl_base,
	breakeven_price,
	product_name,
	product_isin,
	product_symbol,
	product_type
) VALUES (
	'id',
	'positionType',
	'size',
	'price',
	'value',
	'plBase',
	'breakEvenPrice',
	'name',
	'isin',
	'symbol',
	'productType'
);
