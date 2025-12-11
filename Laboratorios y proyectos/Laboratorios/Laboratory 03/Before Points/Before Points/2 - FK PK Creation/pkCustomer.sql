ALTER TABLE customer
add constraint pk_customer primary key (id_customer)
USING index
tablespace ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
