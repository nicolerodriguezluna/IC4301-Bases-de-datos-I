ALTER TABLE email
add constraint fk_email foreign key (idperson) references person(id_person)