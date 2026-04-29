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

✔ Best-selling products to prioritize  
✔ Slow-moving products to reduce  
✔ Seasonal products to stock earlier  
✔ High-demand locations needing more inventory  
✔ Loyal customer preferences  
✔ Revenue opportunities by segment  

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

# SQL Workflow

## 1.Database Creation

```sql
CREATE DATABASE shopping_trends_db;
USE shopping_trends_db;

## 2.Table Creation

Structured retail transaction table created in MySQL.

## 3.Data Import

CSV loaded into database.

## 4️.Data Cleaning

Removed incomplete rows to ensure reliable analysis.
