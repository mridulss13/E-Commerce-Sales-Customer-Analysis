# 📊 E-Commerce Sales Analytics

## 📌 Project Overview

This project analyzes an e-commerce sales dataset to uncover **sales trends, customer behavior, product/category performance, and profitability insights** using SQL and Python.

The goal of this project is to demonstrate how raw transactional data can be transformed into meaningful business insights that can support better decision-making.

---

## 🎯 Business Objectives

The analysis focuses on answering key business questions such as:

* Which product categories generate the highest revenue?
* Which regions contribute the most to sales?
* What is the average discount offered across categories?
* Which categories have high revenue but lower profit margins?
* How does revenue change over time?
* What percentage of orders are returned?
* Who are the highest-spending customers?
* Which customers are the top performers within each category?
* How do discounts affect profitability?
* Which areas show opportunities for business improvement?

---

## 📂 Dataset

The dataset contains **34,500+ e-commerce transactions** and includes information about:

| Column               | Description                    |
| -------------------- | ------------------------------ |
| `order_id`           | Unique order identifier        |
| `customer_id`        | Unique customer identifier     |
| `product_id`         | Unique product identifier      |
| `category`           | Product category               |
| `price`              | Price of the product           |
| `discount`           | Discount percentage            |
| `quantity`           | Quantity purchased             |
| `payment_method`     | Payment method used            |
| `order_date`         | Date of the order              |
| `delivery_time_days` | Delivery time in days          |
| `region`             | Customer region                |
| `returned`           | Whether the order was returned |
| `total_amount`       | Total transaction amount       |
| `shipping_cost`      | Shipping cost                  |
| `profit_margin`      | Profit margin                  |
| `customer_age`       | Customer's age                 |
| `review_rating`      | Customer review rating         |

---

## 🛠️ Tools & Technologies

* **SQL / MySQL** — Data analysis and business queries
* **Python** — Exploratory Data Analysis
* **Pandas** — Data manipulation and analysis
* **Matplotlib** — Data visualization
* **Power BI** — Dashboard and business reporting
* **Excel** — Initial data exploration and validation
* **GitHub** — Project documentation and version control

---

## 🔎 Analysis Performed

### 1. Category Analysis

Analyzed revenue and profitability across different product categories to identify the strongest and weakest performing categories.

### 2. Regional Analysis

Compared sales performance across different regions to understand geographical revenue contribution.

### 3. Customer Analysis

Identified high-value customers based on total spending and analyzed customer purchasing behavior.

### 4. Discount Analysis

Examined discount patterns across categories and evaluated their relationship with revenue and profitability.

### 5. Return Analysis

Calculated return rates and analyzed which categories have a higher percentage of returned orders.

### 6. Time-Based Analysis

Analyzed monthly revenue trends to identify changes in sales performance over time.

### 7. Advanced SQL Analysis

Used advanced SQL concepts including:

* `GROUP BY`
* Aggregate functions
* `HAVING`
* `CTE`
* `RANK()`
* `ROW_NUMBER()`
* Window functions
* Subqueries

---

## 📊 Key Insights

Some of the important findings from the analysis include:

* Identified the **highest-revenue product categories**.
* Compared revenue contribution across regions.
* Identified customers with the highest overall spending.
* Analyzed categories with strong revenue but comparatively lower profit margins.
* Evaluated order return rates across categories.
* Identified top customers within individual product categories.
* Analyzed monthly revenue trends to understand sales performance.

> The exact insights and numerical results are documented in the analysis notebooks and dashboard.

---
## 📈 Dashboard

An interactive **Power BI dashboard** was created to analyze e-commerce sales performance, customer behavior, profitability, and return patterns.

### Dashboard Preview

![E-Commerce Sales Dashboard](images/dashboard.png)


### Key KPIs

* 💰 **Total Revenue**
* 📦 **Total Orders**
* 👥 **Total Customers**
* 📈 **Average Order Value**
* 🔄 **Return Rate**
* 💹 **Average Profit Margin**

### Dashboard Features

The dashboard allows users to interactively analyze performance by:

* Product Category
* Region
* Payment Method
* Time Period

The dashboard provides a quick business overview while allowing users to drill down into specific categories, regions, and customer-related metrics.

> **Tools:** Power BI | SQL | Python | Excel


---

## 🧠 Skills Demonstrated

This project demonstrates practical knowledge of:

* Data Cleaning
* Exploratory Data Analysis (EDA)
* SQL Data Analysis
* Business Problem Solving
* KPI Analysis
* Customer Segmentation
* Revenue Analysis
* Profitability Analysis
* Data Visualization
* Dashboard Development
* Advanced SQL
* Analytical Thinking

---

## 📁 Project Structure

```text
E-Commerce-Sales-Analytics/
│
├── data/
│   └── ecommerce_sales.csv
│
├── sql/
│   └── ecommerce_analysis.sql
│
├── python/
│   └── ecommerce_eda.ipynb
│
├── powerbi/
│   └── ecommerce_dashboard.pbix
│
├── images/
│   └── dashboard.png
│
└── README.md
```

---

## 🚀 How to Use

### SQL

1. Import the dataset into MySQL.
2. Create the required database and table.
3. Run the SQL queries from the `sql` folder.
4. Review the results and business insights.

### Python

1. Install the required libraries:

```bash
pip install pandas matplotlib
```

2. Open the Jupyter Notebook:

```bash
jupyter notebook
```

3. Run the EDA notebook to reproduce the analysis.

### Power BI

Open the `.pbix` file using Power BI Desktop to explore the interactive dashboard.

---

## 💼 Business Impact

The analysis can help an e-commerce business:

* Identify high-performing categories.
* Improve pricing and discount strategies.
* Identify high-value customers.
* Monitor return rates.
* Understand regional sales performance.
* Track profitability.
* Identify areas requiring business improvement.
* Make data-driven decisions using KPIs and trends.

---

## 👨‍💻 Author

**Mridul Sharma**

Aspiring Data Analyst | SQL | Python | Power BI | Excel

GitHub: https://github.com/mridulss13

LinkedIn: www.linkedin.com/in/mridul-sharma108
---

## ⭐ Project Status

**Completed**

This project was developed as a portfolio project to demonstrate practical **Data Analytics, SQL, Python, and Business Intelligence** skills.
