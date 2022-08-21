#Q8
#Display customer name and gender whose names start or end with character 'A'.

#Required table:
SELECT * FROM customer;

#Condition on table:
SELECT * FROM customer WHERE CUS_NAME LIKE 'A%' OR CUS_NAME LIKE '%A';

#Combining the condition with columns:
SELECT CUS_NAME, CUS_GENDER FROM customer WHERE CUS_NAME LIKE 'A%' OR CUS_NAME LIKE '%A';