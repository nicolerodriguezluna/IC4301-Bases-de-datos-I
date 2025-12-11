CREATE TABLE customer
(
 id_customer NUMBER(10) CONSTRAINT customer_idcustomer_nn NOT NULL,
 first_name VARCHAR2(10) CONSTRAINT customer_firstname_nn NOT NULL,
 last_name VARCHAR2(10) CONSTRAINT customer_lastname_nn NOT NULL,
 gender_customer VARCHAR2(10) CONSTRAINT customer_gender_customer NOT NULL
)
