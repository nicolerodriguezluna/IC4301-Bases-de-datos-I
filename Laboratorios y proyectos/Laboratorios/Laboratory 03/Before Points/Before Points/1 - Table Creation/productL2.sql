CREATE TABLE product(
    idproduct Number(15) CONSTRAINT product_idproduct_nn NOT NULL,
    nameProduct VARCHAR2(20) CONSTRAINT product_nameproduct_nn NOT NULL,
    priceProduct NUMBER(15) CONSTRAINT product_priceproduct_nn NOT NULL
)