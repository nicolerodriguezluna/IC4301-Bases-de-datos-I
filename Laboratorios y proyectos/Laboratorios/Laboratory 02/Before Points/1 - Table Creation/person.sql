CREATE TABLE person
(
 id_person  NUMBER(15),
 first_name VARCHAR2(10) CONSTRAINT  person_firstname_nn NOT NULL,
 identityCard NUMBER(9) CONSTRAINT person_identitycard_nn NOT NULL,
 second_name VARCHAR2(10) CONSTRAINT  person_secondname_nn NOT NULL,
 first_surname VARCHAR2(10) CONSTRAINT  person_firstsurname_nn NOT NULL,
 second_surname VARCHAR2(10) CONSTRAINT  person_secondsurname_nn NOT NULL,
 birthdate date CONSTRAINT person_birthdate_nn NOT NULL
);


