ALTER TABLE customer
add constraint fk_customer foreign key (id_person) references person(id_person)
