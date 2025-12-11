ALTER TABLE shoppingcart
      ADD CONSTRAINT pk_shoppingcart PRIMARY KEY (id_shoppingcart)
      USING INDEX
      TABLESPACE ad_ind PCTFREE 20
      STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);