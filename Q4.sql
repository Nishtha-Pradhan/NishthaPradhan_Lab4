#Q4
#Display all the orders along with product name ordered by a customer having Customer_Id=2

#Required tables:
SELECT * FROM `order`;
SELECT * FROM product;
SELECT * FROM ecommerce.supplier_pricing;

#Conditions on tables:
SELECT * FROM `order` WHERE CUS_ID = 2;
#1ST JOIN
SELECT * FROM `ORDER` AS ORD
INNER JOIN supplier_pricing AS SP
ON SP.PRICING_ID = ORD.PRICING_ID;
#2ND JOIN
SELECT * FROM `ORDER` AS ORD
INNER JOIN supplier_pricing AS SP
ON SP.PRICING_ID = ORD.PRICING_ID
INNER JOIN product AS PD
ON PD.PRO_ID = SP.PRO_ID;
#Adding columns
SELECT PD.PRO_NAME, ORD.ORD_ID, ORD.ORD_AMOUNT, ORD.ORD_DATE FROM `ORDER` AS ORD
INNER JOIN supplier_pricing AS SP
ON SP.PRICING_ID = ORD.PRICING_ID
INNER JOIN product AS PD
ON PD.PRO_ID = SP.PRO_ID;

#Combine the conditions:
SELECT PD.PRO_NAME, ORD.ORD_ID, ORD.ORD_AMOUNT, ORD.ORD_DATE FROM `ORDER` AS ORD
INNER JOIN supplier_pricing AS SP
ON SP.PRICING_ID = ORD.PRICING_ID
INNER JOIN product AS PD
ON PD.PRO_ID = SP.PRO_ID
WHERE ORD.CUS_ID = 2;

