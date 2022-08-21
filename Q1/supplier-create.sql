create table IF NOT EXISTS ecommerce.supplier(
SUPP_ID int primary KEY auto_increment,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50) NOT NULL,
SUPP_PHONE varchar(50) NOT NULL
);