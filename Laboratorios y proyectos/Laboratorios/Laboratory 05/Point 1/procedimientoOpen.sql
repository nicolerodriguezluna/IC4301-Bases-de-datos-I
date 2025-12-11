CREATE OR REPLACE PROCEDURE getPhones(pnIdPerson IN NUMBER, pvPhoneType IN VARCHAR2)
AS
  vcName VARCHAR2(1000);
  vnphoneNumber NUMBER;
  vcCategoryDescription VARCHAR2(1000);
  CURSOR phonesCursor IS
    SELECT first_name||' '||second_name||' '||first_surname||' '||second_surname as name,phone_number,category_description
    FROM person
    inner join phone
    ON person.id_person = phone.id_person
    inner join phonecategory
    ON phone.id_category = phonecategory.id_category
    where person.id_person = NVL(pnIdPerson,person.id_person)AND phonecategory.category_description =NVL(pvPhoneType,phonecategory.category_description);
  BEGIN
     OPEN phonesCursor;
     LOOP
        FETCH phonesCursor INTO vcName,vnphoneNumber,vcCategoryDescription;
        EXIT WHEN phonesCursor%NOTFOUND;
        dbms_output.put_line(vcName|| ' ' ||vnphoneNumber|| ' '||vcCategoryDescription);
     END LOOP;
     CLOSE phonesCursor;
  END getPhones;
--3. ¿Qué pasa cuando en el fetch del test se agregan más campos? 10pts
-- The database throws an exception saying that there is a wrong number of values in the INTO list of Fetch Statement.
--4. ¿Qué pasa cuando en el fetch del test faltó obtener campos? 10pts
-- The database throws an exception saying that there is a wrong number of values in the INTO list of Fetch Statement.
--5. ¿Qué pasa cuando en el fetch del test los campos tienen diferente dominio del
--que está obteniendo el cursor? 10pts
--  The procedure compiles and does not throw any exceptions but when you call it from the test query it throws an exception that says there is 
-- numeric or value errors.
