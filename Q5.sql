#Q5
#Display the Supplier details who can supply more than one product.

#Required Tables:
SELECT * FROM ecommerce.supplier;
SELECT * FROM ecommerce.supplier_pricing;

#Conditions on tables:
SELECT * FROM SUPPLIER_PRICING GROUP BY SUPP_ID HAVING COUNT(SUPP_ID)>1;

#Combining the condition with columns:
SELECT SUP.SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE 
FROM supplier AS SUP 
INNER JOIN
(SELECT * FROM SUPPLIER_PRICING GROUP BY SUPP_ID HAVING COUNT(SUPP_ID)>1) AS SP
ON
SUP.SUPP_ID = SP.SUPP_ID;






/*
Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column
#SOLUTION: Run the following - 
set sql_mode='';
*/