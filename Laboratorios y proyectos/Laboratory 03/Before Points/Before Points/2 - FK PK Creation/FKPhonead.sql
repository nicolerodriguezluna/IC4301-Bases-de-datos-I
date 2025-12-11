ALTER TABLE phone
add constraint fk_phone foreign key (phoneCategory) references phoneCategory(Type_Phone)
