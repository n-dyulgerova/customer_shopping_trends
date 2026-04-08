# Customer Shopping Trends Analysis (SQL + Power BI)

## Project Overview
This project analyzes customer shopping behavior to answer a key business question:

## What should the store stock and when in order to maximize sales, reduce lost sales, and minimize dead stock?

Using SQL for data exploration and Power BI for visualization, the project uncovers patterns in:

* Customer segments
* Product demand
* Repeat purchases
* Seasonality
* Location-based trends

## Dataset 
The dataset used in this project is sourced from Kaggle. You can find it [here](https://www.kaggle.com/datasets/iamsouravbanerjee/customer-shopping-trends-dataset).<br/> 

The dataset contains transactional and customer-level data, including:
* Customer demographics (age, gender)
* Product details (item, category, size, color)
* Purchase behavior (frequency, previous purchases)
* Financials (purchase amount)
* Context (season, location, shipping, discounts)
* Customer feedback (review ratings)

## Tools & Technologies
* SQL (MySQL) - Data cleaning, transformation, and analysis
* Power BI - Data visualization & interactive dashboard

## Methodology
The analysis was conducted in several structured steps to transform raw transactional data into actionable business insights:

1. Data Preparation & Cleaning
 * Created a relational database in MySQL and imported the dataset
 * Removed records with missing or null values across key fields to ensure data quality and consistency
2. Exploratory Data Analysis (EDA)
 * Assessed dataset size, unique customers, and available product categories
 * Analyzed overall sales performance, including top categories, most purchased items, and lowest-performing products
3. Customer Segmentation
 * Segmented customers into New, Returning, and Loyal based on their purchase history
 * Evaluated differences in spending behavior and contribution to total revenue across segments
4. Product & Demand Analysis
 * Identified top-performing products within each category
 * Evaluated product performance using purchase frequency, average order value, and customer ratings
5. Seasonality & Trend Analysis
 * Analyzed purchasing patterns across seasons to identify demand fluctuations
 * Determined top products and preferences (e.g., colors) for each season
6.Geographical & Demographic Insights
 * Examined customer distribution and behavior across locations
 * Analyzed differences in purchasing patterns by gender and age groups
7.Data Visualization (Power BI)
 * Built an interactive dashboard to present key insights
 * Enabled filtering by customer segment, category, season, and location for dynamic analysis

##  Dashboard Overview
Pages (Executive, Customer, Product, Seasonality, etc.)
What each page shows (1–2 lines each)

## Key Insights 
 * The business is heavily dependent on Clothing
 * Demand is concentrated in a few core products
 * Business is male-dominated
 * Core customers are working-age adults
 * Revenue depends heavily on customer retention
 * Demand is relatively stable, not extremely seasonal
   
 ## Business Recommendations 
 * Optimize Inventory Around High-Performing Categories
 * Focus on Core Products 
 * Invest in Customer Retention (loyalty programs, personalized discounts, email/CRM campaigns)
 * Target High-Value Customer Segments (marketing campaigns on working professionals)
 * Optimize Gender Strategy (prioritize male-focused inventory, expand female product offerings and launch targeted campaigns to grow female segment)
 * Improve Customer Satisfaction (improve product quality, shipping speed and customer service)

 ## Screenshots (VERY IMPORTANT)
