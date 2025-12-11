UPDATE phonecategory
set type_phone = 'celular'
where id_category = 0;
--We tried to set the category with id 0 to celular, but there was already
--a category with that name that was created in line with the requirements in
-- te previous point 3, so the database throws an error of a violation of the unique
--constraint; which is in this case, type_phone.