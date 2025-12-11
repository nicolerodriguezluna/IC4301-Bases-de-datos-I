CREATE OR REPLACE FUNCTION getCampus(pid_student IN NUMBER) RETURN VARCHAR2 IS
vcSede VARCHAR2(30);
BEGIN
    select name_campus
    into vcSede
    from career ca
    inner join student stu
    ON ca.id_career = stu.id_career
    inner join campus camp
    ON ca.id_campus = camp.id_campus
    where pid_student = id_student;
    Return (vcSede);
END getCampus;
    
