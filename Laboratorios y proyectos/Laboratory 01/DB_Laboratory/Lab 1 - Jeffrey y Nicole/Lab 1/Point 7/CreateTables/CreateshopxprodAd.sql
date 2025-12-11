CREATE TABLE shopxprod
(
    id_shoppingCart NUMBER(10) CONSTRAINT shopxprod_idshoppingCart_nn NOT NULL,
    id_product NUMBER(10) CONSTRAINT shopxprod_idproduct_nn NOT NULL
);