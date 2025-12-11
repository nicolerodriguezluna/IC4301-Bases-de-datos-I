-- Inserts by Nicole.
DELIMITER //
CREATE PROCEDURE insert_committee(IN pnameCommittee VARCHAR(100))
BEGIN
    INSERT INTO committe(id_committe, description_committe, creationDate, userid, lastModifyDate, lastModifyBy)
    VALUES(s_committe.nextval, pnameCommittee, NULL, NULL, NULL, NULL);
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE insert_country(IN pnameCountry VARCHAR(60))
BEGIN
    INSERT INTO country(id_country, name_country, creationDate, userid, lastModifyDate, lastModifyBy)
    VALUES(s_country.nextval, pnameCountry, NULL, NULL, NULL, NULL);
    COMMIT;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE insert_dedication(pdescriptionDedication VARCHAR(30))
BEGIN
    INSERT INTO dedication(id_dedication, description_dedication, creationDate, userid, lastModifyDate, lastModifyBy)
    VALUES(s_dedication.nextval, pdescriptionDedication, NULL, NULL, NULL, NULL);
    COMMIT;
END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;

DELIMITER //

END //
DELIMITER ;
-- Updates by Nicole.
DELIMITER //
CREATE PROCEDURE update_committee_description(IN pidCommitte DECIMAL, IN pNewDescriptionCommittecommitte VARCHAR(100)) 
BEGIN
    UPDATE committe
    SET committe.description_committe = pNewDescriptionCommitte
    WHERE committe.id_committe= pidCommitte;
    COMMIT;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_country_name(IN pidCountry DECIMAL, IN pNewNameCountry VARCHAR(60)) 
BEGIN
    UPDATE country
    SET country.name_country = pNewNameCountry
    WHERE country.id_country = pidCountry;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_dedication_description(IN pidDedication DECIMAL, IN pNewDescriptionDadication VARCHAR(30))
BEGIN
    UPDATE dedication
    SET dedication.description_dedication = pNewDescriptionDadication
    WHERE dedication.id_dedication = pidDedication;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_digitalNewspaper_name(IN pidDigitalNewspaper DECIMAL,  IN pNewNameDigital VARCHAR(30)) 
BEGIN
    UPDATE digitalnewspaper
    SET digitalnewspaper.name_digital_newspaper = pNewNameDigital
    WHERE digitalnewspaper.id_digital_newspaper = pidDigitalNewspaper;
    COMMIT;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_digitalNewspaper_quad(IN pidDigitalNewspaper DECIMAL, IN pNewIdQuad DECIMAL)
BEGIN
    UPDATE digitalnewspaper
    SET digitalnewspaper.id_quad = pNewIdQuad
    WHERE digitalnewspaper.id_digital_newspaper = pidDigitalNewspaper;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_district_name(IN pidDistrict DECIMAL, IN pNewNameDistrict VARCHAR(100))
BEGIN
    UPDATE district
    SET district.name_district = pNewNameDistrict
    WHERE district.id_district = pidDistrict;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_district_sector(IN pidDistrict DECIMAL,IN pNewIdSector DECIMAL) 
BEGIN
    UPDATE district
    SET district.id_sector = pNewIdSector
    WHERE district.id_sector = pidDistrict;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_email_address(IN pidEmail DECIMAL, IN pNewAddress VARCHAR(100)) 
BEGIN
    UPDATE email
    SET email.address_email = pNewAddress
    WHERE email.id_email = pidEmail;
    COMMIT;
END //
DELIMITER ;

-- idk...
DELIMITER //
CREATE PROCEDURE update_favourite_date_favourite(IN pidArtRev DECIMAL, IN pidUserRev DECIMAL, IN pNewDateFavourite VARCHAR(100))
BEGIN
    UPDATE favourite
    SET favourite.date_favourite = To_date(pNewDateFavourite,'YY-MM-DD')
    WHERE favourite.id_user_fav = pidUserRev AND favourite.id_article_fav = pidArtRev;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_gender_type_gender(IN pidGender DECIMAL, IN pNewTypeGender VARCHAR(38))
BEGIN
    UPDATE gender
    SET gender.type_gender = pNewTypeGender
    WHERE gender.id_gender = pidGender;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_logDB_change_descp(IN pidLogDB DECIMAL, IN pNewChangeDescription VARCHAR(100)) 
BEGIN
    UPDATE logDB
    SET logDB.change_descrp = pNewChangeDescription
    WHERE logDB.id_log = pidLogDB;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_logDB_previous_text(IN pidLogDB DECIMAL, IN pNewPreviousText VARCHAR(4000))
BEGIN
    UPDATE logDB
    SET logDB.previous_text = pNewPreviousText
    WHERE logDB.id_log = pidLogDB;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_logDB_current_text(IN pidLogDB DECIMAL, IN pNewCurrentText VARCHAR(4000)) 
BEGIN
    UPDATE logDB
    SET logDB.current_text = pNewCurrentText
    WHERE logDB.id_log = pidLogDB;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_parameter_name(IN pidParameter DECIMAL, IN pNewNameParameter VARCHAR(30)) 
BEGIN
    UPDATE parameterDB
    SET parameterDB.name_parameter = pNewNameParameter
    WHERE parameterDB.id_parameter = pidParameter; 
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_parameter_description(IN pidParameter DECIMAL, IN pNewDescriptionParameter VARCHAR(100))
BEGIN
    UPDATE parameterDB
    SET parameterDB.description_parameter = pNewDescriptionParameter
    WHERE parameterDB.id_parameter = pidParameter;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_parameter_value(IN pidParameter DECIMAL, IN pNewValueParameter DECIMAL) 
BEGIN
    UPDATE parameterDB
    SET parameterDB.value_parameter = pNewValueParameter
    WHERE parameterDB.id_parameter = pidParameter;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_parameter_route(IN pidParameter DECIMAL, IN pNewRoute VARCHAR(200))
BEGIN
    UPDATE parameterDB
    SET parameterDB.route = pNewRoute
    WHERE parameterDB.id_parameter = pidParameter;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_identitycard(IN pidPerson DECIMAL, IN pNewIdentificationCard DECIMAL)
BEGIN
    UPDATE person
    SET person.identification_card = pNewIdentificationCard
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_first_name(IN pidPerson DECIMAL, IN pNewFirstName VARCHAR(30))
BEGIN
    UPDATE person
    SET person.first_name = pNewFirstName
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_second_name(IN pidPerson DECIMAL, IN pNewSecondName VARCHAR(30)) 
BEGIN
    UPDATE person
    SET person.second_name  = pNewSecondName
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_first_surname(IN pidPerson DECIMAL, IN pNewFirstSurname VARCHAR(30)) 
BEGIN
    UPDATE person
    SET person.first_surname = pNewFirstSurname
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_second_surname(IN pidPerson DECIMAL, IN pNewSecondSurname VARCHAR(30)) 
BEGIN
    UPDATE person
    SET person.second_surname = pNewSecondSurname
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

-- idk
DELIMITER //
CREATE PROCEDURE update_person_datebirth(IN pidPerson DECIMAL, IN pNewDatebirth VARCHAR(30))
BEGIN
    UPDATE person
    SET person.datebirth = to_date(pNewDatebirth,'YY-MM-DD')
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_quad(IN pidPerson DECIMAL, IN pNewIdQuad DECIMAL) 
BEGIN
    UPDATE person
    SET person.id_quad = pNewIdQuad
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_gender(IN pidPerson DECIMAL, IN pNewIdGender DECIMAL)
BEGIN
    UPDATE person
    SET person.id_gender = pNewIdGender
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_localitation(IN pidPerson DECIMAL, IN pNewExactLocalitation VARCHAR(2000))
BEGIN
    UPDATE person
    SET person.exact_location = pNewExactLocalitation
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person_district(IN pidPerson DECIMAL, IN pNewIdDistrict DECIMAL)
BEGIN
    UPDATE person
    SET person.id_district = pNewIdDistrict
    WHERE person.id_person = pidPerson;
    COMMIT;
END //
DELIMITER ;