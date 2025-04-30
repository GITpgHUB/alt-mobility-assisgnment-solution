# Alt Mobility - Data Analyst Assignment


---
# Alt Mobility - Data Analyst Internship Assignment

This repository contains the completed assignment for the Data Analyst Intern role at **Alt Mobility**, a leading EV leasing company. The objective was to extract insights from customer and payment datasets, visualize customer retention trends, and provide recommendations for improving business operations.

---

## 📁 Datasets Used
- `customer_orders.csv` — Order placement data (customer, order date, amount, status)
- `payments.csv` — Payment details (status, method, amount)

## 🎯 Assignment Goals
- Perform **SQL-based analysis** to derive insights from orders, customers, and payments.
- **Visualize customer retention** using cohort-based methods in Power BI.
- Submit: SQL files, summary report, and cohort matrix visualizations.



## ✅ Tasks & Approach

### 1. Order and Sales Analysis
- Counted total orders, grouped by status
- Tracked revenue trends over months
- Identified top 5 highest value orders

### 2. Customer Analysis
- Segmented customers by repeat purchase behavior
- Counted monthly new customers using cohort approach
- Analyzed order volume per customer

### 3. Payment Status Analysis
- Calculated success and failure rates by payment method
- Analyzed revenue impact of failed payments

### 4. Order Details Report
- Combined orders with payments in a single comprehensive report
- Derived key metrics like success %, avg value, and revenue loss

### 5. Customer Retention Analysis
- Built cohort tables for retention trend visualization
- Used Power BI matrix chart to highlight cohort repeat behavior over years

---

## 📊 Visualizations


### Retention Matrix (Power BI)
![image](https://github.com/user-attachments/assets/b1bff78c-f60a-4c0f-8284-50e6f4f0ebbf)
![image](https://github.com/user-attachments/assets/459e1497-fbc9-4bbc-9b3f-c9a62095d0ff)
![image](https://github.com/user-attachments/assets/cd557652-36a7-42df-9810-1afb66632fea)





---

## 🧾 Summary of Findings

 ## 1. Key Insights from SQL Queries
- Total Orders: 15,000
- Unique Customers: 7,334
- Repeat Customers: 4,402 (60%)
- Pending Orders : 5069
- Delivered Orders : 5057
- Shipped Orders : 4874
- Orders with Completed Payments: 4,267 (28.45%)
- Orders with Failed Payments: 4,263 (28.42%)
- Total Revenue (Completed Payments): Rs 12.57 Lakhs
- Revenue Lost (Failed Payments): Rs 12.73 Lakhs
## 2. Customer Retention Analysis
The cohort analysis visualizes how many customers, grouped by their first order month (cohort),
made repeat purchases in subsequent months. Each row represents a cohort and each column
shows the percentage of that cohort who placed an order in the given month.
## Insights from Power BI Cohort Matrix:
- Retention drops after the first year across most cohorts.
- 2020 and 2021 cohorts show solid multi-year engagement.
- Recent cohorts (2023–2024) are showing early promise and should be targeted for loyalty building.
## 3. Recommendations for Alt Mobility
- Address the high payment failure rate, especially for credit card and PayPal users.
- Create targeted re-engagement campaigns at the 2nd and 3rd month post-first-order.
- Incentivize repeat orders through loyalty programs or reminders around peak retention months.
- Analyze high-retention cohorts (e.g., 2020–2021) for patterns that can be replicated.

---

## 🛠 Tech Stack Used 

- SQL
- Power BI
- MS Word (Report Documentation)

---
