# Customer Shopping Trends Analysis
SQL + Power BI Portfolio Project

## Business Problem

Retail stores struggle with three inventory challenges: stocking too little (lost sales), too much (dead stock, tied-up cash), or the wrong products at the wrong time (poor customer satisfaction).

### Core question: What should the store stock, where, and when — to maximize sales and minimize dead stock?

## Tools
MySQL (data cleaning, transformation, EDA) · Power BI (dashboards) · DAX (KPIs)

## Approach
* Loaded raw transactional data into MySQL and removed rows with missing values across all key fields
* Explored order volume, ratings, and revenue by category, item, gender, age group, and location
* Used window functions (ROW_NUMBER() OVER PARTITION BY) to rank top items within each category and season
* Segmented customers into New / Returning / Loyal based on purchase history and compared total spend by segment
* Built four Power BI dashboards on top of the cleaned data: Executive Summary, Product & Inventory, Seasonal Demand, Location Insights

## Key Insights
* Clothing is the top category by order volume (1,737 orders), with Blouse and Pants tied as the top items (171 orders each).
* Jeans had the fewest orders of any item (124) — the weakest performer and the highest dead-stock risk in the catalog.
* Gloves carry the highest average rating (3.86), ahead of Sandals (3.84) and Boots (3.81) — strong candidates for restocking priority despite moderate order volume.
* Seasonal leaders differ by season: Sunglasses peak in Winter, Sweaters in Spring, Pants in Summer, and Jackets in Fall — inventory should shift ahead of each transition.
* Texas has the highest average review rating (3.91), while West Virginia has the lowest (3.58) — revenue is evenly spread across states (no single state exceeds ~2.5% of total), so the gap is a service/experience signal rather than a demand one.
* Loyal customers (10+ previous purchases, 3,116 of ~3,900 customers) account for $185.5K of the $233K total revenue — by far the largest segment. Their top purchase is Blouse, followed by Jewelry and Shirt.

## Notes & Assumptions
Revenue figures are in USD.<br/>
Customer segments: New (1 previous purchase), Returning (2–10), Loyal (10+).<br/>
"Dead-stock risk" is approximated by lowest order count per item — the dataset does not include actual inventory or stock-turnover data.

## Dashboards

### Executive Summary — Total revenue, orders, average rating, unique customers, top categories, revenue trend

![Executive Summary](images/executive-summary.png)

### Product & Inventory — Top/lowest sellers, revenue by category, ratings vs. orders, dead-stock indicators

![Product & Inventory Dashboard](images/product-insights.png)


### Seasonal Demand - Top products and categories by season, restock timing

![Seasonal Demand Dashboard](images/seasonality.png)


### Location Insights — Revenue by state, satisfaction by location, inventory priority by region

![Location Insights Dashboard](images/location-insights_cut.png)


## Recommendations
* Stock more: top-selling, high-rated products and categories with consistent demand
* Stock less: low-rated, slow-moving items at risk of becoming dead stock
* Timing: build seasonal inventory ahead of identified peak periods
* Location: weight allocation toward top-revenue regions; investigate low-rated ones
