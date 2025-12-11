ALTER TABLE email
add constraint pk_email primary key (idemail)
USING index
tablespace ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
