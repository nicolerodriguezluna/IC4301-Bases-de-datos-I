CREATE TABLE peoplege
(
 id_people  NUMBER(10),
 first_name VARCHAR2(10) CONSTRAINT  peoplege_firstname_nn NOT NULL,
 last_name VARCHAR2(10) CONSTRAINT  peoplege_lastname_nn NOT NULL,
 email NUMBER(8) CONSTRAINT  phonege_phonenumber_nn NOT NULL,
 gender VARCHAR2(10) CONSTRAINT peoplege_gender_nn NOT NULL
);