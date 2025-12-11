ALTER TABLE shopxprod
add constraint pk_shopxprod primary key (id_shoppingcart,id_product)
add constraint fk_shopxprod_shoppingcart foreign key (id_shoppingcart) references shoppingcart(id_shoppingcart)
add constraint fk_shopxprod_product foreign key (id_product) references product(id_product)
add quantity NUMBER(10) CONSTRAINT shopxprod_quantity_nn NOT NULL
add id_bill NUMBER(20) CONSTRAINT shpxprod_idbill_nn NOT NULL
add constraint fk_shopxprod_bill foreign key (id_bill) references bill(code_bill)