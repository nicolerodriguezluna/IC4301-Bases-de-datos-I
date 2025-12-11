CREATE view top3ver2 AS
SELECT first_name||' '||second_name||' '||first_surname||' '||second_surname nombre,salary_employee
FROM (SELECT first_name,second_name,first_surname,second_surname,salary_employee, RANK() OVER (ORDER BY salary_employee DESC)
salary_rank
FROM employeege
inner join person
On employeege.id_person = person.id_person)
WHERE salary_rank <= 3;
-- The difference is that the first query gave us the order of the three highest salaries considering the order of the tuples; therefore,
-- if there was a duplicated salary after the top 3 it will not be showed. However, with query number two; regardless of soliciting the
-- top 3 it will show all the salaries regardless of the location of the tuples, it showed us 6 tuples because rank number 3 with salary 700000
-- is shared by many employees.