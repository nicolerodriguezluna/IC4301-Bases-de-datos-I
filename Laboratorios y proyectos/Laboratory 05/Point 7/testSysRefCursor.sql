declare
vcName VARCHAR2(1000);
vnphoneNumber NUMBER;
vcCategoryDescription VARCHAR2(1000);
containsPhones SYS_REFCURSOR;
BEGIN
    getPhonesSysRef(0,'CELULAR',containsPhones);
    LOOP
        FETCH containsPhones
        INTO vcName,vnphoneNumber,vcCategoryDescription;
        EXIT WHEN containsPhones%NOTFOUND;
        dbms_output.put_line(vcName|| ' ' ||vnphoneNumber|| ' '||vcCategoryDescription);
    END LOOP;
    CLOSE containsPhones;
END;

-- OTHER TEST CASES
--declare
--vcName VARCHAR2(1000);
--vnphoneNumber NUMBER;
--vcCategoryDescription VARCHAR2(1000);
--containsPhones SYS_REFCURSOR;
--BEGIN
--    getPhonesSysRef(1,'CELULAR',containsPhones);
--    LOOP
--        FETCH containsPhones
--        INTO vcName,vnphoneNumber,vcCategoryDescription;
--        EXIT WHEN containsPhones%NOTFOUND;
--        dbms_output.put_line(vcName|| ' ' ||vnphoneNumber|| ' '||vcCategoryDescription);
--    END LOOP;
--    CLOSE containsPhones;
--END;
--
--declare
--vcName VARCHAR2(1000);
--vnphoneNumber NUMBER;
--vcCategoryDescription VARCHAR2(1000);
--containsPhones SYS_REFCURSOR;
--BEGIN
--    getPhonesSysRef(0,'CASA',containsPhones);
--    LOOP
--        FETCH containsPhones
--        INTO vcName,vnphoneNumber,vcCategoryDescription;
--        EXIT WHEN containsPhones%NOTFOUND;
--        dbms_output.put_line(vcName|| ' ' ||vnphoneNumber|| ' '||vcCategoryDescription);
--    END LOOP;
--    CLOSE containsPhones;
--END;
--
--declare
--vcName VARCHAR2(1000);
--vnphoneNumber NUMBER;
--vcCategoryDescription VARCHAR2(1000);
--containsPhones SYS_REFCURSOR;
--BEGIN
--    getPhonesSysRef(1,'CASA',containsPhones);
--    LOOP
--        FETCH containsPhones
--        INTO vcName,vnphoneNumber,vcCategoryDescription;
--        EXIT WHEN containsPhones%NOTFOUND;
--        dbms_output.put_line(vcName|| ' ' ||vnphoneNumber|| ' '||vcCategoryDescription);
--    END LOOP;
--    CLOSE containsPhones;
--END;
--
--declare
--vcName VARCHAR2(1000);
--vnphoneNumber NUMBER;
--vcCategoryDescription VARCHAR2(1000);
--containsPhones SYS_REFCURSOR;
--BEGIN
--    getPhonesSysRef(0,NULL,containsPhones);
--    LOOP
--        FETCH containsPhones
--        INTO vcName,vnphoneNumber,vcCategoryDescription;
--        EXIT WHEN containsPhones%NOTFOUND;
--        dbms_output.put_line(vcName|| ' ' ||vnphoneNumber|| ' '||vcCategoryDescription);
--    END LOOP;
--    CLOSE containsPhones;
--END;
--
--declare
--vcName VARCHAR2(1000);
--vnphoneNumber NUMBER;
--vcCategoryDescription VARCHAR2(1000);
--containsPhones SYS_REFCURSOR;
--BEGIN
--    getPhonesSysRef(1,NULL,containsPhones);
--    LOOP
--        FETCH containsPhones
--        INTO vcName,vnphoneNumber,vcCategoryDescription;
--        EXIT WHEN containsPhones%NOTFOUND;
--        dbms_output.put_line(vcName|| ' ' ||vnphoneNumber|| ' '||vcCategoryDescription);
--    END LOOP;
--    CLOSE containsPhones;
--END;