SELECT first_name,second_name,identitycard,id_person,phonecategory
FROM person
inner join phone
ON person.id_person = phone.idperson
where phone.phonecategory = 'casa'