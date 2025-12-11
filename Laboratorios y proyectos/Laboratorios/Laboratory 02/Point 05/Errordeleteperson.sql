delete from person where id_person = 7;
--Borre una persona que tenga teléfonos asociados. ¿Qué sucede? Justifique su
--respuesta.
-- There is an error because of an integrity constraint, in our case, when we tried to delete the person
-- an error ocurred beacuse the table employee has idPerson as a foreign key, the same happens with the table phone.