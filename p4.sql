WITH filtered_od AS (
  SELECT order_id, quantity
  FROM order_details
  WHERE quantity > 10
)
SELECT order_id, AVG(quantity)
FROM filtered_od
GROUP BY order_id