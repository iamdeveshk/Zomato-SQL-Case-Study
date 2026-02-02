# 🍽️ Zomato SQL Case Study

## 📌 Overview
This project analyzes a **Zomato-style food delivery database** using SQL to derive **actionable business insights** related to user behavior, restaurant performance, revenue trends, and delivery partner earnings.

The case study focuses on using SQL as an **analytical tool** rather than just a querying language.

---

## 🛠 Tools & Skills
- SQL (MySQL)
- Multi-table JOINs
- Aggregations (`SUM`, `AVG`, `COUNT`)
- `GROUP BY` & `HAVING`
- Date functions
- NULL handling (`COALESCE`)
- Business-oriented analysis

---

## 📁 Dataset Structure
The database consists of **7 interconnected tables**:

| Table Name          | Description |
|---------------------|-------------|
| `users`             | User / customer information |
| `orders`            | Order-level transaction data |
| `order_details`     | Line-item details per order |
| `restaurants`       | Restaurant metadata |
| `menu`              | Restaurant-wise menu mapping |
| `food`              | Food item catalog |
| `delivery_partner`  | Delivery partner information |

---

## 🔗 Entity Relationships (High Level)
- One user → many orders  
- One order → many order items (`order_details`)  
- Restaurants → menus → food items  
- Each order is assigned to one delivery partner  

---

## 🧠 Business Questions Answered
- What is the total revenue generated?
- Which restaurants generate the highest revenue?
- Who are the highest-spending users?
- What are the most frequently ordered food items?
- How does revenue change month-wise?
- Which delivery partners earn the most?

---

## 📊 Sample Queries

### Total Revenue Generated
```sql
SELECT SUM(od.price * od.quantity) AS total_revenue
FROM order_details od;
