SELECT od.*, (SELECT o.customer_id FROM orders o WHERE o.id = od.order_id)
FROM order_details od;