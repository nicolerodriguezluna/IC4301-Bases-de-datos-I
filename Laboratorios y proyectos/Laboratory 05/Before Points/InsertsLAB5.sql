INSERT INTO phonecategory
(id_category,category_description)
VALUES (0,'CASA');

INSERT INTO phonecategory
(id_category,category_description)
VALUES (1,'CELULAR');

insert into person
(id_person,first_name,second_name,first_surname,second_surname)
VALUES(0,'Alberto','Edwin','Morales','Jara');

insert into person
(id_person,first_name,second_name,first_surname,second_surname)
VALUES(1,'Ariela','Jimena','Loria','Valverde');

insert into person
(id_person,first_name,second_name,first_surname,second_surname)
VALUES(2,'Josue','Andres','Corrales','Villalobos');

insert into person
(id_person,first_name,second_name,first_surname,second_surname)
VALUES(3,'Esteban','Francisco','Mora','Rojas');

insert into person
(id_person,first_name,second_name,first_surname,second_surname)
VALUES(4,'Leidy','Liliana','Cascante','Solano');


INSERT INTO phone
(id_phone,id_category,id_person,phone_number)
VALUES (0,71602741,1,0);

INSERT INTO phone
(id_phone,id_category,id_person,phone_number)
VALUES (1,1,1,64854789);

INSERT INTO phone
(id_phone,id_category,id_person,phone_number)
VALUES (2,0,0,22707711);

INSERT INTO phone
(id_phone,id_category,id_person,phone_number)
VALUES (3,0,1,22145391);

INSERT INTO phone
(id_phone,id_category,id_person,phone_number)
VALUES (4,1,0,62872191);

insert into student
(id_student,first_name,second_name,first_surname,second_surname,student_card)
VALUES(0,'Jeffrey','Daniel','Leiva','Cascante',20210167);

insert into student
(id_student,first_name,second_name,first_surname,second_surname,student_card)
VALUES(1,'Tamara','Nicole','Rodríguez','Luna',20210921);

insert into coursexstudent
(id_course,id_student,id_status)
VALUES(0,0,0);

insert into coursexstudent
(id_course,id_student,id_status)
VALUES(2,0,2);

insert into coursexstudent
(id_course,id_student,id_status)
VALUES(3,1,1);

insert into coursexstudent
(id_course,id_student,id_status)
VALUES(4,1,0);




