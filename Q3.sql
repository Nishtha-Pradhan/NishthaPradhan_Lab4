#Q3
#Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.

#Required tables:
SELECT * FROM customer;
SELECT * FROM `order`;

#Conditions on the tables:
SELECT CUS_GENDER, count(CUS_ID) as NUMBER_OF_CUSTOMERS FROM customer group by CUS_GENDER;
SELECT CUS_ID FROM `order` WHERE ORD_AMOUNT>3000;

#Combine the two conditions:
SELECT CUS_GENDER, count(CUS_ID) AS NUMBER_OF_CUSTOMERS FROM customer
WHERE customer.CUS_ID IN (SELECT CUS_ID FROM `order` WHERE ORD_AMOUNT>3000) GROUP BY CUS_GENDER;

