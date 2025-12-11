DECLARE
vcCareer VARCHAR2(30);
BEGIN
    vcCareer:= getCareer(0);
    dbms_output.put_line(vcCareer);
END;