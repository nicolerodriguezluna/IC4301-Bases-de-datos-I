CREATE OR REPLACE FUNCTION getCareer(pid_student IN NUMBER) RETURN VARCHAR2 IS
vcCareer VARCHAR2(30);
BEGIN
    Select name_career
    Into vcCareer
    from career ca
    inner join student stu
    ON ca.id_career = stu.id_career
    where pid_student = id_student;
    Return (vcCareer);
END;
    