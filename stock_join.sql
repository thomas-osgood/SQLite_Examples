/*
Query Name: stock_join
Author: Thomas Osgood
Description:
	Gives a print out of the stock table.
	Will display the product name and the 
	number of that product available.
*/
SELECT p.name, IFNULL(count,0) as available FROM products AS p
LEFT JOIN stock as s
ON (s.product_id = p.product_id)
ORDER BY p.name ASC;