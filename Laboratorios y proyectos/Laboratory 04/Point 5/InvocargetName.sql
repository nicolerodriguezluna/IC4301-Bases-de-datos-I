DECLARE
    vcName VARCHAR2(140);
BEGIN
  vcName:= getName(20210987);
  dbms_output.put_line(vcName);
END;


