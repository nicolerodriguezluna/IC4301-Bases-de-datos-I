CREATE TABLE status
(
    id_status NUMBER(10) CONSTRAINT status_id_nn NOT NULL,
    status_description VARCHAR2(30) CONSTRAINT status_descr_nn NOT NULL
);
CREATE TABLE course
(
    id_course NUMBER(8) CONSTRAINT course_idcourse_nn NOT NULL,
    course_description VARCHAR2(20) CONSTRAINT course_description_nn NOT NULL
);

CREATE TABLE coursexstudent(
    id_course NUMBER(8) CONSTRAINT coursexstudent_course_nn NOT NULL,
    id_student NUMBER(10) CONSTRAINT coursexstudent_student_nn NOT NULL,
    id_status NUMBER(10) CONSTRAINT course_status_nn NOT NULL
);

CREATE TABLE phonecategory
(
    id_category NUMBER(10) CONSTRAINT phonecategory_id_nn NOT NULL,
    category_description VARCHAR2(30) CONSTRAINT phonecategory_descr_nn NOT NULL
);

Create table person(
    id_person Number(10) CONSTRAINT person_idperson_nn NOT NULL,
    first_name VARCHAR2(100) CONSTRAINT person_fname_nn NOT NULL,
    second_name VARCHAR2 (100) CONSTRAINT person_sname_nn NOT NULL,
    first_surname VARCHAR2 (100) CONSTRAINT person_fsurname_nn NOT NULL,
    second_surname VARCHAR2 (100) CONSTRAINT person_ssurname_nn NOT NULL
);


Create table phone(
   id_phone NUMBER(10) CONSTRAINT phone_id_nn NOT NULL,
   id_category NUMBER(10) CONSTRAINT phone_idcategory_nn NOT NULL,
   id_person NUMBER(10) CONSTRAINT phone_idperson_nn NOT NULL,
   phone_number NUMBER(8) CONSTRAINT phone_phoneNumber_nn NOT NULL
);

Create table student(
   id_student NUMBER(10) CONSTRAINT student_id_nn NOT NULL,
   student_card NUMBER(8) CONSTRAINT student_card_nn NOT NULL,
    first_name VARCHAR2(100) CONSTRAINT student_fname_nn NOT NULL,
    second_name VARCHAR2 (100) CONSTRAINT student_sname_nn NOT NULL,
    first_surname VARCHAR2 (100) CONSTRAINT student_fsurname_nn NOT NULL,
    second_surname VARCHAR2 (100) CONSTRAINT student_ssurname_nn NOT NULL
);