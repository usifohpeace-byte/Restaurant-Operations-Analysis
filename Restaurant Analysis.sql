-- 1. Combine the menu_items and order_details tables
-- 2. What were the least and most ordered items? What categories
-- 3. What were the top 5 orders that spent the most money.
-- 4. View the details of the higest spend order. What insights can you from it
-- 5. View the details of the top 5 highest spend order. What insights can you gather from it

use restaurant_db;
Select * from menu_items;
Select * from order_details;

-- Combine with left join the two tables on item_id
Select * from order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id;
    
-- What were the least ordered item ??

Select item_name, count(order_details_id) AS num_orders
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
Group by item_name
ORDER BY num_orders;

-- The most ordered item ??

Select item_name, category, count(order_details_id) AS num_orders
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
Group by item_name, category
ORDER BY num_orders Desc;

-- The top 5 orders that spent the most money ?

Select order_id, sum(price) AS total_spend
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
Group by order_id
ORDER BY total_spend desc
LIMIT 5;

-- View the details of the higest spend order ?
Select category, count(item_id) as num_items
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id = 440
Group by category;

-- He bought a lot of italian dishes and fewer of the rest. And of course Italian dishes are the
-- most expensive

-- View the details of the top 5 high spend customers.

Select order_id, category, count(item_id) as num_items
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
Where order_id in (440, 2075, 1957, 330, 2675)
Group by order_id, category;







