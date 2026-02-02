# 🍽️ Zomato SQL Case Study

## 📌 Overview
This project analyzes a **Zomato-style food delivery database** using SQL to extract meaningful **business insights** related to customers, restaurants, revenue, and delivery partners.

The goal of this case study is to demonstrate how SQL can be used not just for querying data, but for **analytical thinking and decision-making**.

---

## 🛠 Tools & Skills
- SQL (MySQL)
- Joins (INNER JOIN)
- Aggregations (`SUM`, `AVG`, `COUNT`)
- `GROUP BY` & `HAVING`
- Date functions
- NULL handling (`COALESCE`)
- Business analysis

---

## 📁 Dataset Structure
The database consists of the following tables:

| Table Name          | Description |
|---------------------|-------------|
| `orders`            | Order-level transaction data |
| `customers`         | Customer information |
| `restaurants`       | Restaurant details |
| `food`              | Food item catalog |
| `delivery_partner`  | Delivery partner data |

---

## 🧠 Business Questions Answered
- What is the total revenue generated?
- Which restaurants contribute the most revenue?
- Who are the highest-spending customers?
- What are the most frequently ordered food items?
- How does revenue vary month-wise?
- Which delivery partners earn the most?

---

## 📊 Sample Queries

### Total Revenue Generated
```sql
SELECT SUM(amount) AS total_revenue
FROM orders;
