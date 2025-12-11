ALTER TABLE phone
      ADD CONSTRAINT fk_phone FOREIGN KEY (id_customer) references customer(id_customer)