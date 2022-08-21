#Q6
#Find the least expensive product from each category and print the table with category id, name, product name and price of the product

#Required tables:
SELECT * FROM product;
SELECT * FROM category;
SELECT * FROM supplier_pricing;

#Conditions on table:
#1ST JOIN
SELECT * FROM product AS PRO
INNER JOIN category AS CAT
ON CAT.CAT_ID = PRO.CAT_ID;
#2ND JOIN
SELECT * FROM product AS PRO
INNER JOIN category AS CAT
ON CAT.CAT_ID = PRO.CAT_ID
INNER JOIN supplier_pricing AS SP
ON PRO.PRO_ID = SP.PRO_ID;
#Adding columns
SELECT CAT.CAT_ID, CAT.CAT_NAME, PRO.PRO_NAME, SP.SUPP_PRICE AS PRICE FROM product AS PRO
INNER JOIN category AS CAT
ON CAT.CAT_ID = PRO.CAT_ID
INNER JOIN supplier_pricing AS SP
ON PRO.PRO_ID = SP.PRO_ID;

#Combining condition with columns:
SELECT CAT.CAT_ID, CAT.CAT_NAME, PRO.PRO_NAME, MIN(SP.SUPP_PRICE) AS PRICE 
FROM product AS PRO
INNER JOIN category AS CAT
ON CAT.CAT_ID = PRO.CAT_ID
INNER JOIN supplier_pricing AS SP
ON PRO.PRO_ID = SP.PRO_ID
GROUP BY CAT.CAT_NAME;

