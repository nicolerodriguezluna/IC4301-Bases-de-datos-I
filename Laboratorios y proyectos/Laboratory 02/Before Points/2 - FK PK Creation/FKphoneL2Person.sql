ALTER TABLE phoneL2
add constraint fk_phoneL2_person foreign key (idperson) references person(id_person)