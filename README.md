# Customer Shopping Trends Analysis  
### SQL + Power BI Portfolio Project

## Business Problem

Retail stores often struggle with three major inventory challenges:

- **Stocking too little** → lost sales opportunities  
- **Stocking too much** → dead stock and tied-up cash  
- **Stocking the wrong products at the wrong time** → poor customer satisfaction  

### Main Business Question

**What should the store stock, where should it stock it, and when should it stock it in order to maximize sales, reduce lost sales, and minimize dead stock?**

This project uses **SQL** and **Power BI** to turn raw transactional shopping data into actionable inventory and sales decisions.

---

# Project Objective

Using customer purchase history, seasonality, product demand, location trends, and customer loyalty data, the project identifies:

* Best-selling products to prioritize  
* Slow-moving products to reduce  
* Seasonal products to stock earlier  
* High-demand locations needing more inventory  
* Loyal customer preferences  
* Revenue opportunities by segment  

---

## Tools Used

- **MySQL** – Data cleaning, transformation, analysis  
- **Power BI** – Dashboard design & storytelling  
- **DAX** – KPIs and dynamic measures  
- **CSV Dataset** – Retail customer shopping data  

---

# Dataset Includes

- Customer ID  
- Age / Gender / Location  
- Item Purchased  
- Product Category  
- Revenue ($)  
- Season  
- Color / Size  
- Ratings  
- Previous Purchases  
- Subscription Status  
- Purchase Frequency  

---

## SQL Workflow

This project used MySQL to prepare and analyze the dataset before visualization in Power BI.

- Created relational database and transaction table
- Imported raw CSV data
- Cleaned null / incomplete records
- Performed exploratory data analysis (EDA)
- Analyzed product demand, seasonality, customer behavior, and locations
- Built queries to support inventory recommendations

CSV loaded into database.

## How SQL Helped Answer the Core Business Question

### What to Stock
Top-selling products, high-rated items, category demand

### Where to Stock
Revenue by location, regional demand trends

### When to Stock
Seasonal purchasing behavior and peak-demand products

# Power BI Dashboard Screenshots

## Executive Summary Dashboard

Provides a high-level overview of store performance and inventory health.

- Total Revenue
- Total Orders
- Average Rating
- Unique Customers
- Top Performing Categories
- Revenue Trends

![Executive Summary](images/executive summary.png)

---

## Product & Inventory Insights Dashboard

Supports decisions on **what products to stock more or reduce**.

- Top-selling products
- Lowest-demand products
- Revenue by category
- Product performance matrix
- Ratings vs Orders analysis
- Dead stock risk indicators

![Product & Inventory Dashboard](images/page2-products.png)

---

## Location Insights Dashboard

Supports decisions on **where inventory should be prioritized**.

- Revenue by state map
- Top-performing locations
- Customer satisfaction by location
- Gender mix by state
- Inventory priority recommendations

![Location Insights Dashboard](images/page3-location.png)

---

## Seasonal Demand Dashboard

Supports decisions on **when products should be stocked**.

- Top products by season
- Seasonal category demand
- Popular colors by season
- Restock timing recommendations

![Seasonal Demand Dashboard](images/page4-seasonality.png)

---

## Customer Insights Dashboard

Supports customer-focused inventory and marketing strategy.

- Revenue by gender
- Spend by age group
- New vs Returning vs Loyal customers
- Top products bought by loyal customers

![Customer Insights Dashboard](images/page5-customers.png)

---

# Key Insights

## Inventory Insights

- Certain products consistently outperform others and should receive higher stock priority.
- Some items show low demand and may increase dead stock risk if overstocked.
- Higher-rated products tend to perform better and are stronger candidates for replenishment.

## Seasonal Insights

- Customer demand changes significantly by season.
- Specific products peak during Winter, Spring, Summer, and Fall.
- Seasonal colors and categories should be stocked ahead of demand spikes.

## Location Insights

- Revenue performance varies across store locations.
- Some states generate significantly higher sales and require stronger inventory allocation.
- Lower-rated locations may indicate operational or service issues affecting sales.

## Customer Insights

- Loyal and returning customers contribute a large share of revenue.
- Purchase preferences differ across age groups and gender segments.
- Repeat customers can guide long-term stocking priorities.

---

# Business Recommendations

## What to Stock

- Increase inventory levels for top-selling and high-rated products.
- Prioritize products frequently purchased by loyal customers.
- Expand winning categories with consistently strong demand.

## What to Reduce

- Lower stock levels for slow-moving and low-rated products.
- Review underperforming categories for rationalization or promotions.
- Avoid overstocking items with inconsistent demand.

## When to Stock

- Prepare seasonal inventory before peak demand periods.
- Use historical seasonal patterns to schedule replenishment.
- Launch promotions before seasonal transitions.

## Where to Stock

- Allocate more inventory to top revenue locations.
- Customize stock mix based on regional preferences.
- Monitor weak-performing states and optimize assortment.

## Customer Growth Strategy

- Reward loyal customers with targeted offers.
- Use returning customer behavior to predict future demand.
- Personalize campaigns by demographic trends.

---

# Final Business Outcome

By using SQL analysis and Power BI dashboards, the store can better determine:

- **What to stock**
- **Where to stock it**
- **When to stock it**

This helps maximize sales, reduce lost sales opportunities, and minimize dead stock.

