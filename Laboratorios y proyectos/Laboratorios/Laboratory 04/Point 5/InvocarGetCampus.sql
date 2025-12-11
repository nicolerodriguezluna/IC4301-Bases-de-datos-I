DECLARE
vcCampus VARCHAR2(30);
BEGIN
    vcCampus:= getCampus(0);
    dbms_output.put_line(vcCampus);
END;