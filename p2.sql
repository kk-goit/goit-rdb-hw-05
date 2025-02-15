SELECT * 
FROM order_details od
WHERE (SELECT o.shipper_id = 3 FROM orders o WHERE o.id = od.order_id)