CREATE TABLE campus
(
    id_campus NUMBER(10) CONSTRAINT campus_idcampus_nn NOT NULL,
    name_campus VARCHAR2(30) CONSTRAINT campus_namecampus_nn NOT NULL,
    id_college NUMBER(10) CONSTRAINT campus_idcollege_nn NOT NULL
);

CREATE TABLE Career
(
    id_career NUMBER(10) CONSTRAINT career_idcareer_nn NOT NULL,
    name_career VARCHAR2(30) CONSTRAINT career_namecareer_nn NOT NULL,
    id_campus NUMBER(10) CONSTRAINT craeer_idcampus_nn NOT NULL

);

CREATE TABLE Student
(
    id_student NUMBER(10) CONSTRAINT student_idstudent_nn NOT NULL,
    first_name VARCHAR2(30)CONSTRAINT student_first_name NOT NULL,
    second_name VARCHAR2(30),
    first_surname VARCHAR2(30)CONSTRAINT student_first_surname NOT NULL,
    second_surname VARCHAR2(30)CONSTRAINT student_second_surname NOT NULL,
    student_card NUMBER(8) CONSTRAINT student_student_card_nn NOT NULL,
    id_career NUMBER(10) CONSTRAINT student_idcarerr_nn NOT NULL
);

CREATE TABLE email
(
    id_email NUMBER(10) CONSTRAINT email_idemail_nn NOT NULL,
    address VARCHAR2(30) CONSTRAINT email_address_nn NOT NULL,
    id_student NUMBER(10) CONSTRAINT email_studentid_nn NOT NULL
);


