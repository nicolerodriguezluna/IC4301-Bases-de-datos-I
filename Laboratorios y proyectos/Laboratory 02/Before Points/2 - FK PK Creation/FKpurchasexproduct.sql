ALTER TABLE purchasexproduct
add constraint fk_purchasexproduct_purchase foreign key (idpurchase) references purchase(idpurchase),
add constraint fk_purchasexproduct_product foreign key (idproduct) references product(idproduct)