CREATE TABLE phone
(
    id_phone NUMBER(10),
    phone_number NUMBER(8) CONSTRAINT phone_phonenumber_nn NOT NULL
);