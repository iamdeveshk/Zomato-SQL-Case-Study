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
- What is the total revenue generated?
- Which restaurants generate the highest revenue?
- Who are the highest-spending users?
- What are the most frequently ordered food items?
- How does revenue change month-wise?
- Which delivery partners earn the most?
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

## 📈 Key Insights
- A small percentage of restaurants contribute a major share of platform revenue.
- High-value repeat users significantly impact total earnings.
- Certain food items dominate ordering patterns across restaurants.
- Delivery partner earnings are strongly correlated with order volume.

---

## 🚀 What This Project Demonstrates
- Translating business problems into SQL queries
- Writing clean, scalable multi-table JOINs
- Revenue computation using line-item data
- Practical handling of real-world relational schemas
- Analytical thinking beyond basic SQL syntax

---

## 📎 How to Use This Repository
1. Clone or download the repository
2. Import the SQL files into MySQL
3. Execute queries sequentially to explore insights

---

## 🤝 Feedback & Collaboration
Feedback and suggestions are welcome.  
Feel free to connect or raise an issue for discussion.

