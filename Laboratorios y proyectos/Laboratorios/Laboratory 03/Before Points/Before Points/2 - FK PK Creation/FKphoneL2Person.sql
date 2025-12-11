ALTER TABLE phone
add constraint fk_phone_person foreign key (idperson) references person(id_person)