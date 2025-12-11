USE bdproject;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Administrative(
    id_person DECIMAL(15) NOT NULL,
    id_dedication DECIMAL(15) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE administrator(
    id_person DECIMAL(15) NOT NULL,
    password_Admin VARCHAR(200) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Article(
    id_article DECIMAL(15) NOT NULL,
    title_article VARCHAR(100) NOT NULL,
    text_note VARCHAR(4000) NOT NULL,
    publication_date DATETIME NOT NULL,
    id_status_article DECIMAL(1) NOT NULL,
    id_dig_news DECIMAL(15) NOT NULL,
    id_art_cat DECIMAL(15) NOT NULL,
    id_committe_art DECIMAL(15) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);


-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE ArticleCategory(
    id_article_category DECIMAL(15) NOT NULL,
    name_category VARCHAR(30) NOT NULL,
    description_category VARCHAR(1000) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Author(
    id_person DECIMAL(15) NOT NULL,
    id_author_cathegory DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE authorcategory(
    id_author_category DECIMAL(15) NOT NULL,
    type_category VARCHAR(30) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Authorxarticle(
    id_author_autart DECIMAL(15) NOT NULL,
    id_article_autart DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Availabilitypr(
    id_availability DECIMAL(1) NOT NULL,
    description_availability VARCHAR(100) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Campus(
    id_campus DECIMAL(15) NOT NULL,
    name_campus VARCHAR(100) NOT NULL,
    id_university DECIMAL(15) NOT NULL,
    id_district DECIMAL(15) NOT NULL,
	creationDate DATETIME,
	userId VARCHAR(1000),
	lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Canton(
	id_canton DECIMAL(15) NOT NULL,
	name_canton VARCHAR(100)  NOT NULL,    
	id_area DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Catalog(
    id_catalog DECIMAL(15) NOT NULL,
    id_newspaper DECIMAL(15) NOT NULL,
    description_catalog VARCHAR(1000)  NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE College(
    id_college DECIMAL(15) NOT NULL,
    name_college VARCHAR(100)  NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Committe(
    id_committe DECIMAL(15) NOT NULL,
    description_committe VARCHAR(100) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000),
    id_campus DECIMAL(15)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Country(
    id_country DECIMAL(3) NOT NULL,
    name_country VARCHAR(60) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Dedication(
    id_dedication DECIMAL(15) NOT NULL,
    description_dedication VARCHAR(30) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE digitalnewspaper(
    id_digital_newspaper DECIMAL(15) NOT NULL,
    name_digital_newspaper VARCHAR(30) NOT NULL,
    id_quad DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE District(
	id_district DECIMAL(15) NOT NULL,
    name_district VARCHAR(100)  NOT NULL,
	id_sector DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Email(
	id_email DECIMAL(15) NOT NULL,
	address_email VARCHAR(100) NOT NULL,
    id_person_mail DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Favourite (
	id_article_fav DECIMAL(15) NOT NULL,
    id_user_fav DECIMAL(15) NOT NULL,
    date_favourite DATETIME NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Gender(
    id_gender DECIMAL(15) NOT NULL,
    type_gender VARCHAR(38)  NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE LogDB(
    id_log DECIMAL(15) NOT NULL,
	systemdate DATETIME NOT NULL,
    time_log TIMESTAMP(6) NOT NULL,
	change_descrp VARCHAR(100) NOT NULL,
    previous_text VARCHAR(4000) NOT NULL,
    current_text VARCHAR(4000) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Neighbour(
    id_person DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE table ParameterDb(
    id_parameter DECIMAL(15) NOT NULL,
    name_parameter VARCHAR(30) NOT NULL,
    description_parameter VARCHAR(100) NOT NULL,
	value_parameter DECIMAL(4) NOT NULL,
    route VARCHAR(200) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Person(
    id_person DECIMAL(15) NOT NULL,
    identification_card DECIMAL(9) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    second_name VARCHAR(30),
    first_surname VARCHAR(30) NOT NULL,
    second_surname VARCHAR(30) NOT NULL,
    datebirth DATETIME NOT NULL,
	id_quad DECIMAL(15) NOT NULL,
    id_gender DECIMAL(15) NOT NULL,
	exact_Localitation VARCHAR(2000) NOT NULL,
	id_district DECIMAL(15) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE PersonXCommitte
(
    id_person DECIMAL(15) NOT NULL,
    id_committe DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Phone(
    id_phone DECIMAL(15) NOT NULL,
    number_phone DECIMAL(8) NOT NULL,
    id_person DECIMAL(15) NOT NULL,
    id_phone_category DECIMAL(8) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE PhoneCategory(
    id_category DECIMAL(8) NOT NULL,
    description_category VARCHAR(100) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Photo(
    id_photo DECIMAL(38) NOT NULL,
    id_article DECIMAL(15),
    route VARCHAR(200) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000),
	id_user DECIMAL(15),
    id_product DECIMAL(15) NOT NULL
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Product(
    id_product DECIMAL(15) NOT NULL,
	cost_product DECIMAL(7) NOT NULL,
    description_product VARCHAR(100) NOT NULL,
    id_catalog_pr DECIMAL(15) NOT NULL,
    id_availability DECIMAL(15) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE ProductXAuthor(
    id_product_pa DECIMAL(15) NOT NULL,
    id_author_pa DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Professor(
    id_person DECIMAL(15) NOT NULL,
    id_dedication DECIMAL(15) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Province(
    id_province DECIMAL(3) NOT NULL,
    name_province VARCHAR(100) NOT NULL,
    id_nation DECIMAL(15) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Review(
    description_review VARCHAR(200) NOT NULL,
    stars DECIMAL(1) NOT NULL,
    id_article_rev DECIMAL(15) NOT NULL,
    id_user_rev DECIMAL(15) NOT NULL,
    creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Status(
    id_status DECIMAL(3) NOT NULL,
    name_status VARCHAR(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Student(
    id_person DECIMAL(15) NOT NULL,
    student_card DECIMAL(10) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE userDB(
    id_user DECIMAL(15) NOT NULL,
    password_user VARCHAR(100)  NOT NULL,
    id_person DECIMAL(15) NOT NULL,
	creationDate DATETIME,
    userId VARCHAR(1000),
    lastModifyDate DATETIME,
    lastModifyBy VARCHAR(1000),
    user_name VARCHAR(1000) NOT NULL
);