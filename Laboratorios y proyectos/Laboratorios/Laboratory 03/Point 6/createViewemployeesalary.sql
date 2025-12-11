CREATE VIEW employeeSalary AS 
SELECT id_employee,salary_employee,id_person,birthday_employee
FROM employeege
WHERE salary_employee < 3000;