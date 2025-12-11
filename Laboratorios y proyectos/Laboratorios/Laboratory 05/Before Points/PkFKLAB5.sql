ALTER TABLE student
ADD CONSTRAINT pk_student PRIMARY KEY (id_student)
USING INDEX
TABLESPACE un_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE person
ADD CONSTRAINT pk_person PRIMARY KEY (id_person)
USING INDEX
TABLESPACE un_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE course
ADD CONSTRAINT pk_course PRIMARY KEY (id_course)
USING INDEX
TABLESPACE un_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE coursexstudent
ADD CONSTRAINT pk_studentxcourse PRIMARY KEY (id_student,id_course)
USING INDEX
TABLESPACE un_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);



ALTER TABLE phone
ADD CONSTRAINT pk_phone PRIMARY KEY (id_phone)
USING INDEX
TABLESPACE un_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE phonecategory
ADD CONSTRAINT pk_phonecategory PRIMARY KEY (id_category)
USING INDEX
TABLESPACE un_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE status
ADD CONSTRAINT pk_status PRIMARY KEY (id_status)
USING INDEX
TABLESPACE un_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE phone
ADD CONSTRAINT fk_phone_person FOREIGN KEY (id_person) references person (id_person);

ALTER TABLE phone
ADD CONSTRAINT fk_phone_category FOREIGN KEY (id_category) references phonecategory (id_category);

ALTER TABLE coursexstudent
ADD CONSTRAINT fk_studentxcourse_student FOREIGN KEY (id_student) references student (id_student);

ALTER TABLE coursexstudent
ADD CONSTRAINT fk_studentxcourse_course FOREIGN KEY (id_course) references course (id_course);

ALTER TABLE coursexstudent
ADD CONSTRAINT studentxcourse_fk_status FOREIGN KEY (id_status) references status(id_status);


