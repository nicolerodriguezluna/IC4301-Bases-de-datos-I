CREATE TABLE Administrative(
    id_person number(15) CONSTRAINT administrative_idperson_nn NOT NULL,
    id_dedication number(15) CONSTRAINT administrative_iddedication_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE administrator(
    id_person number(15) CONSTRAINT administrator_idperson_nn NOT NULL,
    passwordAdmin VARCHAR2(200) CONSTRAINT administrator_passwordAdmin_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Article(
    id_article NUMBER(15) CONSTRAINT article_idarticle_nn NOT NULL,
    id_photo NUMBER(38),
    title_article VARCHAR2(100) CONSTRAINT article_titlearticle_nn NOT NULL,
    text_note VARCHAR2(4000) CONSTRAINT article_textnote_nn NOT NULL,
    publication_date DATE CONSTRAINT article_pubDate_nn NOT NULL,
    id_status_article NUMBER(1) CONSTRAINT article_statart_nn NOT NULL,
    id_dig_news NUMBER(15) CONSTRAINT article_idnews_nn NOT NULL,
    id_art_cat NUMBER(15) CONSTRAINT article_idartcat_nn NOT NULL,
    id_committe_art NUMBER(15) CONSTRAINT article_idcommit_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);


CREATE TABLE ArticleCategory(
    id_article_category NUMBER(15) CONSTRAINT artcat_idartcat_nn NOT NULL,
    name_category VARCHAR2(30) CONSTRAINT artcat_namecat_nn NOT NULL,
    description_category VARCHAR2(1000) CONSTRAINT artcat_descrp_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Author(
    id_person NUMBER(15) CONSTRAINT author_idperson_nn NOT NULL,
    id_author_cathegory NUMBER(15) CONSTRAINT author_idauthorcategory_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE authorcategory(
    id_author_category NUMBER(15) CONSTRAINT autcat_idauthcat_nn NOT NULL,
    type_category VARCHAR2(30) CONSTRAINT autcat_typecategory_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Authorxarticle(
 id_author_autart NUMBER(15) CONSTRAINT authartcl_idauthor_nn NOT NULL,
 id_article_autart NUMBER(15) CONSTRAINT authartcl_idarticle_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Availabilitydb(
    id_availability NUMBER(1) CONSTRAINT availabilitypr_avai_nn NOT NULL,
    description_availability VARCHAR2(100) CONSTRAINT availabilitydb_descrp_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Campus(
    id_campus NUMBER(15) CONSTRAINT campus_idcampus_nn NOT NULL,
    name_campus NUMBER(15) CONSTRAINT campus_campusname_nn NOT NULL,
    id_university NUMBER(15) CONSTRAINT campus_iduniversity_nn NOT NULL,
    id_district NUMBER(15) CONSTRAINT campus_iddistrict_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Canton(
    id_canton NUMBER(15) CONSTRAINT canton_idcanton_nn NOT NULL,
    name_canton VARCHAR2(100) CONSTRAINT canton_namecanton_nn NOT NULL,
    id_area NUMBER(15) CONSTRAINT canton_idarea_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Catalog(
    id_catalog NUMBER(15) CONSTRAINT catalog_idcatalog_nn NOT NULL,
    name_catalog VARCHAR2(200) CONSTRAINT catalog_namecatalog_nn NOT NULL,
    id_newspaper NUMBER(15) CONSTRAINT catalog_idnewspaper_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE College(
    id_college NUMBER(15) CONSTRAINT college_idcollege_nn NOT NULL,
    name_college VARCHAR2(100) CONSTRAINT college_namecollege_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Committee(
    id_committee NUMBER(15) CONSTRAINT committee_idcommittee_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000),
    id_campus number(15)
);

CREATE TABLE Country(
    id_country NUMBER(3) CONSTRAINT country_idcountry_nn NOT NULL,
    name_country VARCHAR2(60) CONSTRAINT country_namecountry_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Dedication(
    id_dedication NUMBER(15) CONSTRAINT dedication_iddedication_nn NOT NULL,
    description_dedication VARCHAR2(30) CONSTRAINT dedication_descrp_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE digitalnewspaper(
    id_digital_newspaper NUMBER(15) CONSTRAINT digitnews_iddigitnews_nn NOT NULL,
    name_digital_newspaper VARCHAR2(30) CONSTRAINT digitnews_namedigitnew_nn NOT NULL,
    id_quad NUMBER(15) CONSTRAINT digitnews_idquad_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE District(
    id_district NUMBER(15) CONSTRAINT district_iddistrict_n NOT NULL,
    name_district VARCHAR2(100) CONSTRAINT district_namedistrict_nn NOT NULL,
    id_sector NUMBER(15) CONSTRAINT district_idsector_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Email(
    id_email NUMBER(15) CONSTRAINT email_idmail_nn NOT NULL,
    address_email VARCHAR2(100) CONSTRAINT email_addresss_nn NOT NULL,
    id_person_mail NUMBER(15) CONSTRAINT email_idperson_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Favourite (
    id_favourite NUMBER(38) CONSTRAINT favourite_idfav_nn NOT NULL,
    id_article_fav NUMBER(15) CONSTRAINT favourite_idartfav_nn NOT NULL,
    id_user_fav NUMBER(15) CONSTRAINT favourite_iduser_nn NOT NULL,
    date_favourite DATE CONSTRAINT favourite_date_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Gender(
  id_gender NUMBER(15) CONSTRAINT gender_idgender_nn NOT NULL,
  type_gender VARCHAR2(200) CONSTRAINT gender_typegender_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE LogDB(
    id_log NUMBER(15) CONSTRAINT logDB_idlog_nn NOT NULL,
    systemdate DATE CONSTRAINT logDB_systemdate_nn NOT NULL,
    time_log TIMESTAMP CONSTRAINT logDB_time_nn NOT NULL,
    change_descrp VARCHAR2(100) CONSTRAINT logDB_changedescrp_nn NOT NULL,
    previous_text VARCHAR2(4000) CONSTRAINT logDB_previoustext_nn NOT NULL,
    current_text VARCHAR2(4000) constraint logdb_current_text_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Neighbour(
    id_person number(15) CONSTRAINT neighbour_idperson_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE table ParameterDb(
    id_parameter NUMBER(15) CONSTRAINT parameterDb_idparameter_nn NOT NULL,
    name_parameter VARCHAR2(30) CONSTRAINT parameterDb_name_nn NOT NULL,
    description_parameter VARCHAR2(100) CONSTRAINT parameterDB_descrp_nn NOT NULL,
    value_parameter NUMBER(4) CONSTRAINT parameterDb_value_nn NOT NULL,
    route VARCHAR2(200) CONSTRAINT parameterDb_route_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Person(
    id_person number(15) CONSTRAINT person_idperson_nn NOT NULL,
    identification_card NUMBER(9)CONSTRAINT person_identificationcard_nn NOT NULL,
    first_name VARCHAR2(30) CONSTRAINT person_firstname_nn NOT NULL,
    second_name VARCHAR2(30),
    first_surname VARCHAR2(30) CONSTRAINT person_firstsurname_nn NOT NULL,
    second_surname VARCHAR2(30) CONSTRAINT person_secondname_nn NOT NULL,
    datebirth DATE CONSTRAINT person_datebirth_nn NOT NULL,
    id_quad NUMBER(15) CONSTRAINT person_idquad_nn NOT NULL,
    id_gender NUMBER(15) CONSTRAINT person_idgender_nn NOT NULL,
    id_district NUMBER(15) CONSTRAINT person_iddistrict_nn NOT NULL,
    exact_Localitation VARCHAR2(2000) CONSTRAINT person_exactlocalitation_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE PersonXCommittee
(
    id_person NUMBER(15) CONSTRAINT perxcom_idperson_nn NOT NULL,
    id_committee Number(15) CONSTRAINT perxcom_idcomm_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Phone(
    id_phone NUMBER(15) CONSTRAINT phone_idphone_nn NOT NULL,
    number_phone NUMBER(8) CONSTRAINT phone_numberphone_nn NOT NULL,
    id_person NUMBER(15) CONSTRAINT phone_idperson_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE PhoneCategory(
    id_category NUMBER(8) CONSTRAINT phcat_idcategory_nn NOT NULL,
    description_category VARCHAR2(100) CONSTRAINT phcat_descrp_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Photo(
    id_photo NUMBER(38) CONSTRAINT photo_idphoto_nn NOT NULL,
    route VARCHAR2(200) CONSTRAINT photo_route_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Product(
    id_product NUMBER(15) CONSTRAINT product_idproduct_nn NOT NULL,
    id_photo NUMBER(38),
    cost_product NUMBER(7) CONSTRAINT product_costproduct_nn NOT NULL,
    description_product VARCHAR2(100) CONSTRAINT product_descrp_nn NOT NULL,
    id_catalog_pr NUMBER(15) CONSTRAINT product_idcatalog_nn NOT NULL,
    id_availability NUMBER(15) CONSTRAINT product_availability_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE ProductXAuthor(
 id_product_pa NUMBER(15) CONSTRAINT productauthor_idproduct_nn NOT NULL,
 id_author_pa NUMBER(15) CONSTRAINT productauthor_author_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Professor(
    id_person number(15) CONSTRAINT professor_idperson_nn NOT NULL,
    id_dedication number(15) CONSTRAINT professor_iddedication_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Province(
    id_province Number(15) CONSTRAINT province_idprovince_nn NOT NULL,
    name_province VARCHAR2(100) CONSTRAINT province_nameprovince_nn NOT NULL,
    id_nation NUMBER (3) CONSTRAINT province_idnation_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Review(
    id_review NUMBER(15) CONSTRAINT review_idreview_nn NOT NULL,
    description_review VARCHAR2(200) CONSTRAINT review_descrp_nn NOT NULL,
    stars NUMBER(1) CONSTRAINT review_stars_nn NOT NULL,
    id_article_rev NUMBER(15) CONSTRAINT review_artrev_nn NOT NULL,
    id_user_rev NUMBER(15) CONSTRAINT review_iduserre_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Status(
    id_status NUMBER(3) CONSTRAINT status_idstatus_nn NOT NULL,
    name_status VARCHAR2(15) CONSTRAINT status_namestat_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE Student(
    id_person number(15) CONSTRAINT student_idperson_nn NOT NULL,
    student_card number(10) CONSTRAINT student_studentcard_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000)
);

CREATE TABLE userDB(
    id_user NUMBER(15) CONSTRAINT user_iduser_nn NOT NULL,
    id_photo NUMBER(38),
    password_user VARCHAR2(100) CONSTRAINT user_passworduser_nn NOT NULL,
    id_log NUMBER(15) CONSTRAINT user_idlog_nn NOT NULL,
    id_person NUMBER(15) CONSTRAINT user_idperson_nn NOT NULL,
    creationDate DATE,
    userId VARCHAR2(1000),
    lastModifyDate DATE,
    lastModifyBy VARCHAR2(1000),
    user_name VARCHAR2(1000) CONSTRAINT user_name_nn NOT NULL
);
