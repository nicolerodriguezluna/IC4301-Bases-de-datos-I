CREATE TABLE phone(
       id_phone NUMBER(15),
       number_phone NUMBER(8) CONSTRAINT phone_numberphone_nn NOT NULL,
       phoneCategory VARCHAR2(25) CONSTRAINT phone_phonecategory_nn NOT NULL,
       idperson NUMBER(15) CONSTRAINT phone_idperson_nn NOT NULL
);