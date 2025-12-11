CREATE OR REPLACE PROCEDURE getPhonesForLoop(pnIdPerson IN NUMBER, pvPhoneType IN VARCHAR2)
AS
    CURSOR phones (pnIdStudent IN NUMBER, pvPhoneType IN VARCHAR2)
    IS
         SELECT first_name||' '||second_name||' '||first_surname||' '||second_surname as name,phone_number,category_description
         FROM person
         inner join phone
         ON person.id_person = phone.id_person
         inner join phonecategory
         ON phone.id_category = phonecategory.id_category
         where person.id_person = NVL(pnIdPerson,person.id_person)AND phonecategory.category_description =NVL(pvPhoneType,phonecategory.category_description);
    BEGIN 
        FOR i in phones(pnIdPerson,pvPhoneType) LOOP
            dbms_output.put_line(i.name||' '||i.phone_number||' '||i.category_description);
        END LOOP;
    END getPhonesForLoop;