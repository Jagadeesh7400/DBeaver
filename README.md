# Store Order Data Analysis Project

## 📋 Project Overview
This project focuses on analyzing store order data using **PostgreSQL**. It explores various metrics, such as product sales, category trends, pricing distribution, and customer behavior. The analysis utilizes SQL queries with **joins**, **aggregations**, and **group-by operations** to provide actionable insights for business decisions.

---

## 📂 Key Sections

### 🔹 Data Generation
Created **50 dummy rows** in the `store_order` table to simulate real-world transactional data.

### 🔹 Analysis Metrics
1. **Product Count & Average Price by Category**  
   - Analyzed product distribution and pricing across categories.

2. **Order Count & Average Price by Category**  
   - Mapped orders to categories for popularity and revenue insights.

3. **Monthly Sales Trends**  
   - Calculated total products sold and average revenue generated per month.

4. **Category-Wise Revenue Analysis**  
   - Explored product sales and revenue per category.

5. **Central Tendency & Dispersion**  
   - Examined metrics like mean, median, mode, variance, and standard deviation for product pricing.

6. **Customer & Quantity Analysis**  
   - Evaluated customer distribution and quantities sold across categories.

---

## 🔍 Key SQL Queries

### 📊 Product Count & Average Price
```sql
SELECT sc."name", COUNT(sp.id) AS count_product, AVG(sp.price) AS average_price
FROM store_category sc
JOIN store_products sp ON sc.id = sp.category_id
GROUP BY sc."name";
