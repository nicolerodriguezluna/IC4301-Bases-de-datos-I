DECLARE
vcMail VARCHAR2(30);
BEGIN
    vcMail:= getEmail(0);
    dbms_output.put_line(vcMail);
END;


