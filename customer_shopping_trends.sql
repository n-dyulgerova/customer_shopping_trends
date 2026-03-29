-- Creating database 
CREATE DATABASE shopping_trends_db;
USE shopping_trends_db;


-- Creating a table to store the data 
CREATE TABLE shopping_trends (
    customer_id INT NOT NULL PRIMARY KEY,
    age INT NOT NULL,
    gender VARCHAR(10),
    item_purchased VARCHAR(40),
    category VARCHAR(40),
    purchase_amount_USD INT NOT NULL,
    location VARCHAR(40),
    size VARCHAR(5),
    color VARCHAR(10),
    season VARCHAR(10),
    review_rating DECIMAL(3 , 2 ),
    subscription_status VARCHAR(5),
    shipping_type VARCHAR(40),
    discount_applied VARCHAR(5),
    promo_code VARCHAR(5),
    previous_purchases INT NOT NULL,
    payment_method VARCHAR(40),
    frequency_of_purchases VARCHAR(40)
); 



-- Transfering the data to the created table 
LOAD DATA LOCAL INFILE 'C:/Downloads/shopping_trends_updated.csv' INTO TABLE shopping_trends_db.shopping_trends
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



-- Data cleaning
SELECT 
    *
FROM
    shopping_trends
WHERE
    gender IS NULL OR item_purchased IS NULL
        OR category IS NULL
        OR location IS NULL
        OR size IS NULL
        OR color IS NULL
        OR season IS NULL
        OR review_rating IS NULL
        OR subscription_status IS NULL
        OR shipping_type IS NULL
        OR discount_applied IS NULL
        OR previous_purchases IS NULL
        OR payment_method IS NULL
        OR frequency_of_purchases IS NULL;

DELETE FROM shopping_trends 
WHERE
    gender IS NULL OR item_purchased IS NULL
    OR category IS NULL
    OR location IS NULL
    OR size IS NULL
    OR color IS NULL
    OR season IS NULL
    OR review_rating IS NULL
    OR subscription_status IS NULL
    OR shipping_type IS NULL
    OR discount_applied IS NULL
    OR previous_purchases IS NULL
    OR payment_method IS NULL
    OR frequency_of_purchases IS NULL;



-- Exploratory Data Analysis (EDA) 

-- Q.1 How big is the dataset?
SELECT 
    COUNT(*)
FROM
    shopping_trends; 



-- Q.2 How many unique customers have visited the store? 
SELECT 
    COUNT(DISTINCT customer_id)
FROM
    shopping_trends;



-- Q.3 How many shopping categories does the store have? 
SELECT DISTINCT
    category
FROM
    shopping_trends; 



-- Q.4 Which categories have the most orders? 
SELECT DISTINCT
    category, COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
GROUP BY category
ORDER BY purchased_qty DESC;


-- Q.5 What are the top 3 most purchased items whithin each category? 
WITH cte AS ( 
SELECT 
      category, item_purchased, COUNT(customer_id) AS total_order,
row_number() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank 
FROM 
  shopping_trends
GROUP BY category, item_purchased) 
SELECT 
      item_rank, category, item_purchased, total_order 
FROM 
      cte
WHERE item_rank <=3;



-- Q.6 What are the most purchased product items? Are they male, female or unisex items? 
SELECT 
    item_purchased, COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
GROUP BY item_purchased
ORDER BY purchased_qty DESC; 
 


-- Q.7 Which items have the highest average purchase amount?
SELECT 
    item_purchased,
    ROUND(AVG(purchase_amount_USD), 1) AS avg_purchase_amount
FROM
    shopping_trends
GROUP BY item_purchased
ORDER BY avg_purchase_amount DESC; 



-- Q.8 Which items have the highest rating? 
SELECT 
    item_purchased, ROUND(AVG(review_rating), 2) AS avg_rating
FROM
    shopping_trends
GROUP BY item_purchased
ORDER BY avg_rating DESC
LIMIT 3;



-- Q.9 Which items have the fewest orders? 
SELECT 
    item_purchased, COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
GROUP BY item_purchased
ORDER BY purchased_qty ASC
LIMIT 3;
 


-- Q.10 What are the most purchased sizes? 
SELECT 
    size, COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
GROUP BY size
ORDER BY purchased_qty DESC; 



-- Q.11 What % of the customers are male vs female?
SELECT 
    gender,
    ROUND(COUNT(*) * 100.0 / (SELECT 
                    COUNT(*)
                FROM
                    shopping_trends),
            0) AS 'gender_%'
FROM
    shopping_trends
GROUP BY gender;



-- Q.12 What is the total revenue generetaed by female and male customers?
SELECT 
    gender, SUM(purchase_amount_USD) AS revenue
FROM
    shopping_trends
GROUP BY gender;



-- Q.13 Men or women have higher average value per order? 
SELECT 
    gender,
    ROUND(AVG(purchase_amount_USD), 1) AS avg_value_per_order
FROM
    shopping_trends
GROUP BY gender;



-- Q.14 What are the top items purchased during different seasons? 
SELECT DISTINCT
    season
FROM
    shopping_trends;

SELECT 
    season,
    category,
    item_purchased,
    COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
WHERE
    season = 'Winter'
GROUP BY season , category , item_purchased
ORDER BY purchased_qty DESC; 
 
SELECT 
    season,
    category,
    item_purchased,
    COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
WHERE
    season = 'Spring'
GROUP BY season , category , item_purchased
ORDER BY purchased_qty DESC;
 
SELECT 
    season,
    category,
    item_purchased,
    COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
WHERE
    season = 'Summer'
GROUP BY season , category , item_purchased
ORDER BY purchased_qty DESC;
 
SELECT 
    season,
    category,
    item_purchased,
    COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
WHERE
    season = 'Fall'
GROUP BY season , category , item_purchased
ORDER BY purchased_qty DESC;
 
 
 
-- Q.15 What is the most popular color during different seasons?
SELECT 
    season, color, COUNT(customer_id) AS purchased_qty
FROM
    shopping_trends
GROUP BY season , color
ORDER BY purchased_qty DESC
LIMIT 4;
 

 
-- Q.16 What are the total sales and quantities purchased by age?
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 24 THEN '18-24'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 54 THEN '45-54'
        WHEN age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END AS age_group,
    COUNT(item_purchased) AS count_purchases,
    ROUND(SUM(purchase_amount_USD), 1) AS total_spend
FROM
    shopping_trends
GROUP BY age_group
ORDER BY total_spend DESC;


  
-- Q.17 Should stocking strategies vary by store location? Do gender sales vary by location?
SELECT 
    location,
    ROUND(SUM(CASE
                WHEN gender = 'Female' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
            1) AS percent_female,
    ROUND(SUM(CASE
                WHEN gender = 'Male' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
            1) AS percent_male,
    COUNT(*) AS total_customers
FROM
    shopping_trends
GROUP BY location
ORDER BY location;


 
-- Q.18 Which locations are top-performing in terms of customer experience?
SELECT 
    location, ROUND(AVG(review_rating), 2) AS avg_review
FROM
    shopping_trends
GROUP BY location
ORDER BY avg_review DESC; 



-- Q.19 Does having more previous purchases correlate with higher total spend? Segment customers to Loyal, Returning and New and check their total spend. 
with customer_type AS(
SELECT 
 customer_id,
 previous_purchases,
 SUM(purchase_amount_USD) AS total_spend, 
CASE
    WHEN previous_purchases = 1 THEN 'New' 
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning' 
    ELSE 'Loyal' 
    END AS customer_segment
FROM shopping_trends
GROUP BY customer_id)
SELECT 
  customer_segment,
  SUM(total_spend) AS total_spend,
  COUNT(customer_id) AS number_of_customers
FROM customer_type
GROUP BY customer_segment;



-- Q.20 Top 3 products purchased by loyal customers. 
with customer_type AS(
SELECT 
customer_id, 
item_purchased, 
COUNT(item_purchased) AS purchased_qty, 
CASE
    WHEN previous_purchases = 1 THEN 'New' 
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning' 
    ELSE 'Loyal' 
    END AS customer_segment
FROM shopping_trends
GROUP BY customer_id)
SELECT 
 customer_segment,
 item_purchased, 
 SUM(purchased_qty) AS QTY
FROM customer_type
GROUP BY customer_segment, item_purchased
HAVING customer_segment = 'Loyal'
ORDER BY QTY DESC
LIMIT 3;



-- Q.21 Categories with high repeat purchase rates
SELECT 
category,
COUNT(DISTINCT customer_id) AS total_customers,
SUM(CASE 
        WHEN previous_purchases > 1 THEN 1 ELSE 0 END) AS repeat_customers,
        ROUND(SUM(CASE WHEN previous_purchases > 1 THEN 1 ELSE 0 END) 
         / COUNT(DISTINCT customer_id), 2) AS repeat_purchase_rate
FROM (
    SELECT 
           customer_id,
           previous_purchases,
           category
    FROM shopping_trends
) t
GROUP BY category
ORDER BY repeat_purchase_rate DESC;




