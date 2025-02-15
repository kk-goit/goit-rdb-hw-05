SELECT order_id, AVG(quantity)
FROM (SELECT order_id, quantity FROM order_details WHERE quantity > 10) AS tmp_od
GROUP BY order_id;