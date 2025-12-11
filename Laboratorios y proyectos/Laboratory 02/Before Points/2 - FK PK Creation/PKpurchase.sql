ALTER TABLE purchase
add constraint pk_purchase primary key (idpurchase)
USING index
tablespace ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
