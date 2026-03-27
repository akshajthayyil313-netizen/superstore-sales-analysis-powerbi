-- Remove $ symbol
UPDATE superstore_clean
SET 
    sales = REPLACE(sales, '$', ''),
    profit = REPLACE(profit, '$', ''),
    shipping_cost = REPLACE(shipping_cost, '$', '');

-- Remove commas
UPDATE superstore_clean
SET 
    sales = REPLACE(sales, ',', ''),
    profit = REPLACE(profit, ',', '');

-- Fix discount %
UPDATE superstore_clean
SET discount = REPLACE(discount, '%', '');

-- Convert dates
UPDATE superstore_clean
SET 
    order_date = STR_TO_DATE(order_date, '%d-%m-%Y'),
    ship_date = STR_TO_DATE(ship_date, '%d-%m-%Y');