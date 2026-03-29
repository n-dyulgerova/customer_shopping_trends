# Customer Shopping Trends Analysis (SQL + Power BI)

## Project Overview
This project analyzes customer shopping behavior to answer the key business question:

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
5. Repeat Purchase Analysis
 * Calculated repeat purchase rates by category to identify stable, high-demand product groups
 * Used this to distinguish between reliable inventory and high-risk (low-repeat) items
6. Seasonality & Trend Analysis
 * Analyzed purchasing patterns across seasons to identify demand fluctuations
 * Determined top products and preferences (e.g., colors) for each season
7.Geographical & Demographic Insights
 * Examined customer distribution and behavior across locations
 * Analyzed differences in purchasing patterns by gender and age groups
8.Data Visualization (Power BI)
 * Built an interactive dashboard to present key insights
 * Enabled filtering by customer segment, category, season, and location for dynamic analysis

##  Dashboard Overview
Pages (Executive, Customer, Product, Seasonality, etc.)
What each page shows (1–2 lines each)

## Key Insights 
 * Loyal customers generate the highest revenue
 * Certain categories show high repeat purchase rates
 * Demand varies significantly by season
   
 ## Business Recommendations 
 * Stock high repeat categories more aggressively
 * Align inventory with seasonal demand
 * Reduce exposure to low-performing items

 ## Screenshots (VERY IMPORTANT)
