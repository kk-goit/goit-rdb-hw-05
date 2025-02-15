DROP FUNCTION IF EXISTS Divide;

DELIMITER //

CREATE FUNCTION Divide(p_divisor float, p_divider float)
RETURNS float
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result float;
    SET result = p_divisor / p_divider;
    RETURN result;
END //

DELIMITER ;

SELECT id, quantity, Divide(quantity, 3.1415)
FROM order_details;