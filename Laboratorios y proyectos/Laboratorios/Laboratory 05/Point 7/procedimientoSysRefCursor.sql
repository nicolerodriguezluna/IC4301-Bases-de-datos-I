CREATE OR REPLACE PROCEDURE getPhonesSysRef(pnIdPerson IN NUMBER, pvPhoneType IN VARCHAR2,pContainPhones OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pContainPhones FOR
     SELECT first_name||' '||second_name||' '||first_surname||' '||second_surname as name,phone_number,category_description
     FROM person
     inner join phone
     ON person.id_person = phone.id_person
     inner join phonecategory
     ON phone.id_category = phonecategory.id_category
     where person.id_person = NVL(pnIdPerson,person.id_person)AND phonecategory.category_description =NVL(pvPhoneType,phonecategory.category_description);
END getPhonesSysRef;