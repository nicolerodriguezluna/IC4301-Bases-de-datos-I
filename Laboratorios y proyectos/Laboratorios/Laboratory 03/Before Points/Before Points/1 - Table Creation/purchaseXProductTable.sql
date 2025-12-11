Create table purchaseXproduct(
    idPurchase NUMBER(15) constraint purchasexproduct_idpurchase_nn NOT NULL,
    idProduct NUMBER(15) constraint purchasexproduct_idproduct_nn NOT NULL,
    quantity NUMBER(15) constraint purchasexproduct_quantity_nn NOT NULL
)