CREATE TABLE phoneCategory(
       id_category NUMBER(15),
       type_phone VARCHAR2(25) constraint phoneCategory_typephone_nn NOT NULL    
);
