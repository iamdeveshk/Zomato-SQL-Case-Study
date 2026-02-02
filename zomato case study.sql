-- Select a particular Database 
USE zomato;

SELECT * FROM users;
-- Count number of rows
SELECT COUNT(*) FROM order_details;

-- Return n random records
-- replicated sample funtion from pandas
SELECT * FROM users  ORDER BY rand() LIMIT 5; #random funtion --> random n rows

-- Find NULL Values
SELECT * FROM orders WHERE restaurant_rating IS NULL;

-- To replace NULL values with 0
UPDATE orders 
SET restaurant_rating = 0 WHERE restaurant_rating IS NULL;

-- Find the number of orders placed by each customers
SELECT t1.name, COUNT(*) AS '#orders' FROM users t1
JOIN orders t2
ON t1.user_id = t2.user_id
GROUP BY t1.user_id,t1.name;

--  Find restaurant with most number of menu items 
SELECT r_name, COUNT(*) AS 'menu_items' FROM restaurants t1
JOIN menu t2
ON t1.r_id = t2.r_id
GROUP BY t2.r_id, r_name;

-- Find number of votes and avg rating for all the restaurants
SELECT t2.r_name,COUNT(*) AS 'num_votes', AVG(restaurant_rating) AS 'avg_rating' FROM orders t1
JOIN restaurants t2
ON t1.r_id = t2.r_id
WHERE restaurant_rating IS NOT NULL
GROUP BY t1.r_id,r_name;

-- Find the food that is being sold at most number of restaurants
SELECT t2.f_name,COUNT(*) FROM menu t1
JOIN food t2
ON t1.f_id = t2.f_id
GROUP BY t1.f_id, t2.f_name
ORDER BY COUNT(*) DESC LIMIT 1;

-- Find restaurant with max revenue in a given month
-- > May
SELECT DATE(date) FROM orders; -- changing text to DATE format
SELECT MONTH(DATE(date)),date FROM orders; -- extracting month correspondingly
SELECT MONTHNAME(DATE(date)),date FROM orders; -- extracting month- name correspondingly


SELECT r_name,SUM(amount) AS 'revenue' FROM orders t1
JOIN restaurants t2
ON t1.r_id = t2.r_id
WHERE MONTHNAME(DATE(date)) = 'May'
GROUP BY t1.r_id,r_name
ORDER BY revenue DESC LIMIT 1;

-- Month by Month revenue for a particular restaurants
SELECT MONTHNAME(DATE(date)),SUM(amount) AS 'revenue' FROM orders t1
JOIN restaurants t2
ON t1.r_id = t2.r_id
WHERE r_name = 'kfc'
GROUP BY MONTHNAME(DATE(date))
ORDER BY MONTH(DATE(date));

-- Find restaurant with sales> x
SELECT r_name, SUM(amount) AS 'revenue'  FROM orders t1
JOIN restaurants t2
ON t1.r_id = t2.r_id
GROUP BY t2.r_id HAVING revenue > 1500;

-- Find customers who have never ordered (using SQL SET operators) A-B
SELECT user_id,name FROM users
EXCEPT
(SELECT t1.user_id,t2.name FROM orders t1
JOIN users t2
ON t1.user_id= t2.user_id);

-- Show order details of a particular customer in a given date range 
-- range: 15May- 15 June
SELECT t1.order_id,f_name FROM orders t1
JOIN order_details t2
ON t1.order_id = t2.order_id
JOIN food t3
ON t2.f_id = t3.f_id
WHERE user_id = 4 AND date BETWEEN '2022-05-15' AND '2022-06-15'; -- by default MYSQL filters date in a string format


-- Find most costly restaurants (Avg price / dish)
SELECT r_name, SUM(price)/COUNT(*) FROM menu t1
JOIN restaurants t2
ON t1.r_id = t2.r_id
GROUP BY t1.r_id
ORDER BY SUM(price)/COUNT(*) DESC;

-- FInd delivery partner compensation using the formula (#deliveries*100 + 10000*avg_rating)
SELECT partner_name, (COUNT(*)*100 + AVG(delivery_rating) * 1000) AS 'salaries' FROM orders t1
JOIN  delivery_partner t2
ON t1.partner_id = t2.partner_id
GROUP BY t1.partner_id
ORDER BY salaries DESC;

-- Find all the veg restaurants
SELECT t3.r_id,t3.r_name FROM menu t1
JOIN food t2
ON t1.f_id = t2.f_id
JOIN restaurants t3
on t1.r_id = t3.r_id
GROUP BY t1.r_id
HAVING MIN(type) = 'Veg' AND MAX(type) = 'Veg';

-- Find min and max order value for all the customers
SELECT name,MIN(amount),MAX(amount), AVG(amount) FROM orders t1
JOIN users t2 
ON t1.user_id = t2.user_id
GROUP BY t1.user_id
ORDER BY name;
