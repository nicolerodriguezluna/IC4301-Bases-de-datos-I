ALTER TABLE campus
ADD CONSTRAINT pk_campus PRIMARY KEY (id_campus);

ALTER TABLE canton
ADD CONSTRAINT pk_canton PRIMARY KEY (id_canton);

ALTER TABLE college
ADD CONSTRAINT pk_college PRIMARY KEY (id_college);

ALTER TABLE country
ADD CONSTRAINT pk_country PRIMARY KEY (id_country);
      
ALTER TABLE district
ADD CONSTRAINT pk_district PRIMARY KEY (id_district);

ALTER TABLE province
ADD CONSTRAINT pk_province PRIMARY KEY (id_province);

ALTER TABLE person
ADD CONSTRAINT pk_person PRIMARY KEY (id_person);

ALTER TABLE student
ADD CONSTRAINT pk_student PRIMARY KEY (id_person);

ALTER TABLE professor
ADD CONSTRAINT pk_professor PRIMARY KEY (id_person);

ALTER TABLE administrator
ADD CONSTRAINT pk_administrator PRIMARY KEY (id_person);

ALTER TABLE administrative      
ADD CONSTRAINT pk_administrative PRIMARY KEY (id_person);


ALTER TABLE neighbour
ADD CONSTRAINT pk_neighbour PRIMARY KEY (id_person);

ALTER TABLE author
ADD CONSTRAINT pk_author PRIMARY KEY (id_person);

ALTER TABLE userdb
ADD CONSTRAINT pk_userdb PRIMARY KEY (id_user);

ALTER TABLE authorcategory
ADD CONSTRAINT pk_authorcategory PRIMARY KEY (id_author_category);

ALTER TABLE digitalnewspaper
ADD CONSTRAINT pk_digitalnewspaper PRIMARY KEY (id_digital_newspaper);

ALTER TABLE article
ADD CONSTRAINT pk_article PRIMARY KEY (id_article);

ALTER TABLE articleCategory
ADD CONSTRAINT pk_articleCategory PRIMARY KEY (id_article_category);

ALTER TABLE status
ADD CONSTRAINT pk_status PRIMARY KEY (id_status);

ALTER TABLE favourite
ADD CONSTRAINT pk_favourite PRIMARY KEY (id_article_fav ,id_user_fav);

ALTER TABLE review
ADD CONSTRAINT pk_review PRIMARY KEY (id_article_rev,id_user_rev);

ALTER TABLE photo
ADD CONSTRAINT pk_photo PRIMARY KEY (id_photo);

ALTER TABLE email
ADD CONSTRAINT pk_email PRIMARY KEY (id_email);

ALTER TABLE phone
ADD CONSTRAINT pk_phone PRIMARY KEY (number_phone);

ALTER TABLE dedication
ADD CONSTRAINT pk_dedication PRIMARY KEY (id_dedication);

ALTER TABLE productxauthor
ADD CONSTRAINT pk_productxauthor PRIMARY KEY (id_product_pa, id_author_pa);

ALTER TABLE authorxarticle
ADD CONSTRAINT pk_authorxarticle PRIMARY KEY (id_author_autart, id_article_autart);

ALTER TABLE gender
ADD CONSTRAINT pk_gender PRIMARY KEY (id_gender);

ALTER TABLE catalog
ADD CONSTRAINT pk_catalog PRIMARY KEY (id_catalog);

ALTER TABLE product
ADD CONSTRAINT pk_product PRIMARY KEY (id_product);

ALTER TABLE availabilitypr
ADD CONSTRAINT pk_availability PRIMARY KEY (id_availability);

ALTER TABLE parameterDB
ADD CONSTRAINT pk_parameter PRIMARY KEY (id_parameter);

ALTER TABLE logDB
ADD CONSTRAINT pk_log PRIMARY KEY (id_log);

ALTER TABLE committe
ADD CONSTRAINT pk_committe PRIMARY KEY (id_committe);

ALTER TABLE personxcommitte
add constraint pk_personxcommitte primary key (id_person,id_committe);

ALTER TABLE phoneCategory
ADD CONSTRAINT pk_phoneCategory PRIMARY KEY (id_category);