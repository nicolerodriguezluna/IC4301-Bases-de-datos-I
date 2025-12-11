CREATE OR REPLACE PROCEDURE getCourse(pnIdStudent IN NUMBER, pcStateCourse IN VARCHAR2)
AS
  vcStateCourse VARCHAR2(1000);
  vcCourseName VARCHAR2(1000);
  vcName VARCHAR2(1000);
  CURSOR coursesCursor IS
    SELECT first_name||' '||second_name||' '||first_surname||' '||second_surname as name,course.course_description,status.status_description
    FROM student
    inner join coursexstudent
    ON student.id_student = coursexstudent.id_student
    inner join course
    ON course.id_course = coursexstudent.id_course
    inner join status
    ON coursexstudent.id_status = status.id_status
    where student.id_student = NVL(pnIdStudent,student.id_student) AND status.status_description =NVL(pcStateCourse,status.status_description);
  BEGIN
     OPEN coursesCursor;
     LOOP
        FETCH coursesCursor INTO vcName,vcCourseName,vcStateCourse;
        EXIT WHEN coursesCursor%NOTFOUND;
        dbms_output.put_line(vcName|| ' ' ||vcCourseName|| ' '||vcStateCourse);
     END LOOP;
     CLOSE coursesCursor;
  END getCourse;
        
