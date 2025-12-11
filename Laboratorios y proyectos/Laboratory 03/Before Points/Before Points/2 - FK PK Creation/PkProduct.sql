ALTER TABLE product
add constraint pk_product primary key (idproduct)
USING index
tablespace ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);