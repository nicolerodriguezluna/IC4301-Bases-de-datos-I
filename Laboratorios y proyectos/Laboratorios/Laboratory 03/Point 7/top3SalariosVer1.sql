Create VIEW top3ver1 AS
select rownum id,salary_employee,name
from (select salary_employee,first_name||' '||second_name||' '||first_surname||' '||second_surname name
from employeege 
inner join person
On employeege.id_person = person.id_person
order by salary_employee desc
)
where rownum <=3;