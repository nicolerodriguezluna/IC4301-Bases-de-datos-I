INSERT INTO college
(id_college,name_college)
VALUES(s_college.nextval(),'TEC');

INSERT INTO campus
(id_campus,name_campus,id_college)
VALUES(s_campus.nextval(),'TEC SAN JOSE',0);

INSERT INTO career
(id_career,name_career,id_campus)
VALUES(s_career.nextval(),'Arquitectura',0);

INSERT INTO student
(id_student,first_name,second_name,first_surname,second_surname,student_card,id_career)
VALUES(s_student.nextval(),'Jeffrey','Daniel','Leiva','Cascante',20210987,0);

INSERT INTO email
(id_email,address,id_student)
VALUES(s_email.nextval(),'jeffleivajr@estudiantec.cr',0);

INSERT INTO student
(id_student,first_name,second_name,first_surname,second_surname,student_card,id_career)
VALUES(s_student.nextval(),'Luis','Alejandro','Rivera','Valverde',19827162,0)

INSERT INTO email
(id_email,address,id_student)
VALUES(s_email.nextval(),'alejandrorv@gmail.com',1);