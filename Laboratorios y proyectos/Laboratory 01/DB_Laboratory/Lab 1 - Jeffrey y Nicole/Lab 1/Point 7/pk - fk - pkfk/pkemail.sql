ALTER TABLE email
      ADD CONSTRAINT fk_email FOREIGN KEY (id_customer) references customer(id_customer)