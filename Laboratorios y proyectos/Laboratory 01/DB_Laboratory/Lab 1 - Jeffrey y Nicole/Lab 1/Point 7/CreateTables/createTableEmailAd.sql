CREATE TABLE email
(
 id_email NUMBER(10),
 email_address VARCHAR2(25) CONSTRAINT email_emailaddress_nn NOT NULL
);