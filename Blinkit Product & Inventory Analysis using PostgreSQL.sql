-- ======================================================
-- BLINKIT QUICK COMMERCE - PRODUCT & INVENTORY ANALYSIS
-- ======================================================
SELECT * FROM productdetails;

-- Total products count?
SELECT COUNT(product_id)AS no_of_products FROM productdetails; 

-- Total categories count?
SELECT COUNT(DISTINCT category)AS no_of_category FROM productdetails;

-- Total brands count?
SELECT COUNT(DISTINCT brand)AS no_of_brand FROM productdetails;

-- Minimum & Maximum MRP?
SELECT MIN(mrp)AS min_mrp, MAX(mrp)AS max_mrp FROM productdetails;

-- Top 10 products by MRP.
SELECT product_name,category,mrp 
FROM productdetails
ORDER BY mrp DESC
LIMIT 10;

-- Top 5 categories by average margin_percentage.
SELECT category,ROUND(AVG(margin_percentage),2)AS avg_margin_percentage
FROM productdetails
GROUP BY category
ORDER BY avg_margin_percentage DESC 
LIMIT 5;

-- Top 5 brands by average margin_percentage.
SELECT brand,ROUND(AVG(margin_percentage),2)AS avg_margin_percentage
FROM productdetails
GROUP BY brand
ORDER BY avg_margin_percentage DESC 
LIMIT 5;

-- Average shelf_life_days by category.
SELECT category,ROUND(AVG(shelf_life_days),2)AS avg_shelf_life_days
FROM productdetails
GROUP BY category;

-- Inventory Analysis: Calculating the total inventory buffer/capacity variance
SELECT 
    SUM(max_stock_level) - SUM(min_stock_level) AS total_stock_capacity
FROM productdetails;

-- Most profitable category based on average profit value (MRP - Price)
SELECT 
    category,
    ROUND(AVG(mrp - price), 2) AS avg_profit
FROM productdetails
WHERE mrp > 2
GROUP BY category
ORDER BY avg_profit DESC
LIMIT 1;

-- Most profitable brand?
SELECT 
    brand,
    ROUND(AVG(mrp - price), 2) AS avg_profit
FROM productdetails
WHERE mrp > 2
GROUP BY brand
ORDER BY avg_profit DESC
LIMIT 1;

-- Highest priced product?
SELECT product_name,price 
FROM productdetails
ORDER BY price DESC
LIMIT 1;

-- Lowest shelf-life category?
SELECT category,ROUND(AVG(shelf_life_days),2)AS avg_shelf_life_days
FROM productdetails
GROUP BY category
ORDER BY avg_shelf_life_days asc
LIMIT 1;

--Categories focus based on stock buffer capacity
SELECT 
    category,
    SUM(max_stock_level - min_stock_level) AS total_stock_buffer,
    ROUND(AVG(price), 2) AS avg_category_price
FROM productdetails
GROUP BY category
HAVING AVG(price) > (SELECT AVG(price) FROM productdetails) 
ORDER BY total_stock_buffer ASC                
LIMIT 1;

SELECT * FROM productdetails;

-- Total products count?
SELECT COUNT(product_id)AS no_of_products FROM productdetails; 

-- Total categories count?
SELECT COUNT(DISTINCT category)AS no_of_category FROM productdetails;

-- Total brands count?
SELECT COUNT(DISTINCT brand)AS no_of_brand FROM productdetails;

-- Minimum & Maximum MRP?
SELECT MIN(mrp)AS min_mrp, MAX(mrp)AS max_mrp FROM productdetails;

-- Top 10 products by MRP.
SELECT product_name,category,mrp 
FROM productdetails
ORDER BY mrp DESC
LIMIT 10;

-- Top 5 categories by average margin_percentage.
SELECT category,ROUND(AVG(margin_percentage),2)AS avg_margin_percentage
FROM productdetails
GROUP BY category
ORDER BY avg_margin_percentage DESC 
LIMIT 5;

-- Top 5 brands by average margin_percentage.
SELECT brand,ROUND(AVG(margin_percentage),2)AS avg_margin_percentage
FROM productdetails
GROUP BY brand
ORDER BY avg_margin_percentage DESC 
LIMIT 5;

-- Average shelf_life_days by category.
SELECT category,ROUND(AVG(shelf_life_days),2)AS avg_shelf_life_days
FROM productdetails
GROUP BY category;

-- Inventory Analysis: Calculating the total inventory buffer/capacity variance
SELECT 
    SUM(max_stock_level) - SUM(min_stock_level) AS total_stock_capacity
FROM productdetails;

-- Most profitable category based on average profit value (MRP - Price)
SELECT 
    category,
    ROUND(AVG(mrp - price), 2) AS avg_profit
FROM productdetails
WHERE mrp > 2
GROUP BY category
ORDER BY avg_profit DESC
LIMIT 1;

-- Most profitable brand?
SELECT 
    brand,
    ROUND(AVG(mrp - price), 2) AS avg_profit
FROM productdetails
WHERE mrp > 2
GROUP BY brand
ORDER BY avg_profit DESC
LIMIT 1;

-- Highest priced product?
SELECT product_name,price 
FROM productdetails
ORDER BY price DESC
LIMIT 1;

-- Lowest shelf-life category?
SELECT category,ROUND(AVG(shelf_life_days),2)AS avg_shelf_life_days
FROM productdetails
GROUP BY category
ORDER BY avg_shelf_life_days asc
LIMIT 1;

--Categories focus based on stock buffer capacity
SELECT 
    category,
    SUM(max_stock_level - min_stock_level) AS total_stock_buffer,
    ROUND(AVG(price), 2) AS avg_category_price
FROM productdetails
GROUP BY category
HAVING AVG(price) > (SELECT AVG(price) FROM productdetails) 
ORDER BY total_stock_buffer ASC                
LIMIT 1;

SELECT * FROM productdetails;

-- Total products count?
SELECT COUNT(product_id)AS no_of_products FROM productdetails; 

-- Total categories count?
SELECT COUNT(DISTINCT category)AS no_of_category FROM productdetails;

-- Total brands count?
SELECT COUNT(DISTINCT brand)AS no_of_brand FROM productdetails;

-- Minimum & Maximum MRP?
SELECT MIN(mrp)AS min_mrp, MAX(mrp)AS max_mrp FROM productdetails;

-- Top 10 products by MRP.
SELECT product_name,category,mrp 
FROM productdetails
ORDER BY mrp DESC
LIMIT 10;

-- Top 5 categories by average margin_percentage.
SELECT category,ROUND(AVG(margin_percentage),2)AS avg_margin_percentage
FROM productdetails
GROUP BY category
ORDER BY avg_margin_percentage DESC 
LIMIT 5;

-- Top 5 brands by average margin_percentage.
SELECT brand,ROUND(AVG(margin_percentage),2)AS avg_margin_percentage
FROM productdetails
GROUP BY brand
ORDER BY avg_margin_percentage DESC 
LIMIT 5;

-- Average shelf_life_days by category.
SELECT category,ROUND(AVG(shelf_life_days),2)AS avg_shelf_life_days
FROM productdetails
GROUP BY category;

-- Inventory Analysis: Calculating the total inventory buffer/capacity variance
SELECT 
    SUM(max_stock_level) - SUM(min_stock_level) AS total_stock_capacity
FROM productdetails;

-- Most profitable category based on average profit value (MRP - Price)
SELECT 
    category,
    ROUND(AVG(mrp - price), 2) AS avg_profit
FROM productdetails
WHERE mrp > 2
GROUP BY category
ORDER BY avg_profit DESC
LIMIT 1;

-- Most profitable brand?
SELECT 
    brand,
    ROUND(AVG(mrp - price), 2) AS avg_profit
FROM productdetails
WHERE mrp > 2
GROUP BY brand
ORDER BY avg_profit DESC
LIMIT 1;

-- Highest priced product?
SELECT product_name,price 
FROM productdetails
ORDER BY price DESC
LIMIT 1;

-- Lowest shelf-life category?
SELECT category,ROUND(AVG(shelf_life_days),2)AS avg_shelf_life_days
FROM productdetails
GROUP BY category
ORDER BY avg_shelf_life_days asc
LIMIT 1;

--Categories focus based on stock buffer capacity
SELECT 
    category,
    SUM(max_stock_level - min_stock_level) AS total_stock_buffer,
    ROUND(AVG(price), 2) AS avg_category_price
FROM productdetails
GROUP BY category
HAVING AVG(price) > (SELECT AVG(price) FROM productdetails) 
ORDER BY total_stock_buffer ASC                
LIMIT 1;

-- Query to identify the top 5 revenue-generating categories based on total absolute profit volume
SELECT 
    category,
    SUM(mrp - price) AS tot_profit
FROM productdetails
GROUP BY category
ORDER BY tot_profit DESC
LIMIT 5;

-- Query to identify top 3 high-yield brands
SELECT
    brand,
    ROUND(AVG(mrp - price), 2) AS avg_profit
FROM productdetails
WHERE (mrp - price) > (SELECT AVG(mrp - price) FROM productdetails)
GROUP BY brand
ORDER BY avg_profit DESC
LIMIT 3;

-- Query to identify top 10 high-volume products with the largest stock buffers requiring warehouse space planning
SELECT 
    product_name, 
    category, 
    (max_stock_level - min_stock_level) AS stock_buffer
FROM productdetails
ORDER BY stock_buffer DESC
LIMIT 10;

-- Query to identify the top 5 categories with the shortest average shelf life (High Perishability Risk)
SELECT 
    category,
    ROUND(AVG(shelf_life_days), 2) AS avg_shelf_life
FROM productdetails
GROUP BY category
ORDER BY avg_shelf_life ASC
LIMIT 5;

-- Focus marketing on top 3 brands with margin percentages 
SELECT 
    brand,
    ROUND(AVG(margin_percentage), 2) AS avg_margin_percentage
FROM productdetails
WHERE margin_percentage > (SELECT AVG(margin_percentage) FROM productdetails)
GROUP BY brand
ORDER BY avg_margin_percentage DESC
LIMIT 3;

