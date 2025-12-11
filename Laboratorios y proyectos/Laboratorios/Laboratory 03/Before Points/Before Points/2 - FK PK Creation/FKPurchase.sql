ALTER TABLE purchase
add constraint fk_purchase foreign key (idcustomer) references customer(id_customer)