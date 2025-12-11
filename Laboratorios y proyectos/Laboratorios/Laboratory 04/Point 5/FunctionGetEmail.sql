CREATE OR REPLACE FUNCTION getEmail(pid_Student IN NUMBER) RETURN VARCHAR2 IS
vcMail VARCHAR2(30);
BEGIN
    select address
    into vcMail
    FROM email
    where id_student = pid_Student;
    return (vcMail);
END getEmail;
    
