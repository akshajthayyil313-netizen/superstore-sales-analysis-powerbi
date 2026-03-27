-- Total Sales
SELECT SUM(sales) AS total_sales FROM superstore_clean;

-- Monthly Sales Trend
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM superstore_clean
GROUP BY year, month
ORDER BY year, month;

-- Top 10 Customers
SELECT 
    customer_name,
    SUM(sales) AS total_sales
FROM superstore_clean
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Profit by Category
SELECT 
    category,
    SUM(profit) AS total_profit
FROM superstore_clean
GROUP BY category;

-- Region-wise Sales
SELECT 
    region,
    SUM(sales) AS total_sales
FROM superstore_clean
GROUP BY region;

-- Discount Impact
SELECT 
    discount,
    SUM(profit) AS total_profit
FROM superstore_clean
GROUP BY discount
ORDER BY discount;