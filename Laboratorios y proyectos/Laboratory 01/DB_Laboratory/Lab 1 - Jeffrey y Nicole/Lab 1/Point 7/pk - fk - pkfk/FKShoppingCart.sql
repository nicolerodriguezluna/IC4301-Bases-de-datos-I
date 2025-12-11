ALTER TABLE shoppingcart
      ADD CONSTRAINT fk_shoppingcart FOREIGN KEY (id_customer) references customer(id_customer)