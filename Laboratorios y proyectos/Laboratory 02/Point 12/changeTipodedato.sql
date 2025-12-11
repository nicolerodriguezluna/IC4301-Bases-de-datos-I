ALTER TABLE phoneL2
MODIFY number_phone VARCHAR2(25)
-- Cambie el tipo de dato de una columna que ya tenga datos. ¿Qué sucede?
-- The database throws an error indicating that the column must be empty to change the datatype