CREATE OR REPLACE PACKAGE BODY utils as
    PROCEDURE insert_Person IS
    BEGIN
        INSERT INTO person(id_person,name_person,last_name,salary)
        VALUES(0,'Jeffrey','Leiva',2000);
        Commit;
    end insert_Person;
end utils;