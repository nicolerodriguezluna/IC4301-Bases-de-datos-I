ALTER TABLE employeege
add constraint pk_employeege primary key (id_employee)
USING index
tablespace ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);  
