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
- NULL handling
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
- The number of orders placed by each customers.
- Restaurant with most number of menu items. 
- Number of votes and average rating for all the restaurants.
- Restaurant with max revenue in a given month (May).
- Restaurant with sales> x
- Customers who have never ordered (using SQL SET operators).
- Show order details of a particular customer in a given date range (Range: 15May- 15 June 2022).
- Find most costly restaurants (Avg price / dish).
- Delivery partner compensation using the formula (#deliveries*100 + 10000*avg_rating).
- All the veg restaurants.
- Minimum and Maximum order value for all the customers.

---
