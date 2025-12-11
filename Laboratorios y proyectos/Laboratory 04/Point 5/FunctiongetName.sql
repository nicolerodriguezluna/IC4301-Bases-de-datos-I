CREATE OR REPLACE FUNCTION getName(pStudentCard IN NUMBER) RETURN VARCHAR2 IS
    vcName VARCHAR2(140);
BEGIN
    SELECT first_name||' '||second_name||' '||first_surname||' '||second_surname
    into vcName
    FROM student
    where student_card = pStudentCard;
    Return(vcName);
END;

