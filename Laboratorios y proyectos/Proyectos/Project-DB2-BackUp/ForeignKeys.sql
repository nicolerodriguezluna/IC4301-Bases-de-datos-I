ALTER TABLE person 
ADD CONSTRAINT fk_person_idcampus FOREIGN KEY (id_quad) REFERENCES campus (id_campus),
ADD CONSTRAINT fk_person_iddirection FOREIGN KEY (id_district) REFERENCES district (id_district),
ADD CONSTRAINT fk_person_gender FOREIGN KEY (id_gender) REFERENCES gender (id_gender);

ALTER TABLE student 
ADD CONSTRAINT fk_student_idperson FOREIGN KEY (id_person) references person(id_person);

ALTER TABLE professor 
ADD CONSTRAINT fk_professor_idperson FOREIGN KEY (id_person) REFERENCES person (id_person),
ADD CONSTRAINT fk_professor_iddedication FOREIGN KEY (id_dedication) references dedication(id_dedication);

ALTER TABLE administrative
ADD CONSTRAINT fk_administrative_idperson FOREIGN KEY (id_person) REFERENCES person (id_person),
ADD CONSTRAINT fk_administrative_iddedication FOREIGN KEY (id_dedication) REFERENCES person(id_person);

ALTER TABLE administrator
ADD CONSTRAINT fk_administrator_idperson FOREIGN KEY (id_person) REFERENCES person (id_person);

ALTER TABLE neighbour
ADD CONSTRAINT fk_neighbour_idperson FOREIGN KEY (id_person) REFERENCES person (id_person);

ALTER TABLE userDB
ADD CONSTRAINT fk_user_idperson FOREIGN KEY (id_person) REFERENCES person (id_person);

ALTER TABLE author
ADD CONSTRAINT fk_author_idperson FOREIGN KEY (id_person) REFERENCES person (id_person),
ADD CONSTRAINT  fk_author_authorcategory FOREIGN KEY (id_author_cathegory) REFERENCES authorcategory (id_author_category);

ALTER TABLE campus
ADD CONSTRAINT fk_campus_idcollege FOREIGN KEY (id_university) REFERENCES college (id_college),
ADD CONSTRAINT fk_campus_iddistrict FOREIGN KEY (id_district) REFERENCES district (id_district);

ALTER TABLE province 
ADD CONSTRAINT fk_province_idCountry FOREIGN KEY (id_nation) REFERENCES country (id_country);

ALTER TABLE canton
ADD CONSTRAINT fk_canton_idprovince FOREIGN KEY (id_area) REFERENCES province (id_province);

ALTER TABLE district
ADD CONSTRAINT fk_district_idCanton FOREIGN KEY (id_sector) REFERENCES canton (id_canton);

ALTER TABLE email
ADD CONSTRAINT fk_email_personid FOREIGN KEY(id_person_mail) references person(id_person);

ALTER TABLE article
ADD CONSTRAINT fk_article_idstatus FOREIGN KEY (id_status_article) REFERENCES status(id_status),
ADD CONSTRAINT fk_article_idnewspaper FOREIGN KEY (id_dig_news) REFERENCES digitalnewspaper(id_digital_newspaper),
ADD CONSTRAINT fk_art_category FOREIGN KEY (id_art_cat) REFERENCES articleCategory(id_article_category),
ADD CONSTRAINT fk_article_idcommitte FOREIGN KEY (id_committe_art) REFERENCES committe(id_committe);

ALTER TABLE favourite
ADD CONSTRAINT fk_favourite_idarticle FOREIGN KEY (id_article_fav) REFERENCES article(id_article),
ADD CONSTRAINT fk_favourite_iduser FOREIGN KEY (id_user_fav) REFERENCES userdb(id_user);

ALTER TABLE review
ADD CONSTRAINT fk_review_idarticle FOREIGN KEY (id_article_rev) REFERENCES article(id_article),
ADD CONSTRAINT fk_review_iduser FOREIGN KEY (id_user_rev) REFERENCES userdb(id_user);

ALTER TABLE photo 
ADD Constraint fk_photo_idarticle FOREIGN KEY (id_article) REFERENCES article(id_article),
ADD CONSTRAINT fk_photo_user FOREIGN KEY(id_user) references userdb(id_user),
ADD CONSTRAINT fk_photo_product FOREIGN KEY(id_product) references product(id_product);

ALTER TABLE email
ADD CONSTRAINT fk_email_idperson FOREIGN KEY (id_person_mail) REFERENCES person(id_person);


ALTER TABLE productxauthor
ADD CONSTRAINT fk_productxauthor_productpa FOREIGN KEY ( id_product_pa) REFERENCES product(id_product),
ADD CONSTRAINT fk_productxauthor_authortpa FOREIGN KEY ( id_author_pa) REFERENCES author(id_person);

ALTER TABLE authorxarticle
ADD CONSTRAINT fk_arthorxarticle_author FOREIGN KEY ( id_author_autart) REFERENCES author(id_person),
ADD CONSTRAINT fk_arthorxarticle_art FOREIGN KEY ( id_article_autart) REFERENCES article(id_article);

ALTER TABLE digitalnewspaper
add constraint fk_newspaper_idquad_nn FOREIGN KEY(id_quad) references campus(id_campus);

ALTER TABLE product
ADD CONSTRAINT fk_product_catalog FOREIGN KEY (id_catalog_pr) REFERENCES catalog(id_catalog),
ADD CONSTRAINT fk_product_availability FOREIGN KEY (id_availability) REFERENCES availabilitypr(id_availability);


ALTER TABLE committe
ADD CONSTRAINT fk_committe_campus FOREIGN KEY(id_campus) references campus(id_campus);
ALTER TABLE catalog
ADD CONSTRAINT fk_catalog_idnews FOREIGN KEY (id_newspaper) REFERENCES digitalnewspaper (id_digital_newspaper);

ALTER TABLE phone
add constraint fk_phone_category foreign key (id_phone_category) references phonecategory(id_category),
add constraint fk_phone_person foreign key(id_person) references person(id_person);

ALTER TABLE personxcommitte
ADD CONSTRAINT fk_person_personxcom foreign key(id_person) references person(id_person),
ADD CONSTRAINT fk_comm_personxcom foreign key(id_committe) references committe(id_committe);