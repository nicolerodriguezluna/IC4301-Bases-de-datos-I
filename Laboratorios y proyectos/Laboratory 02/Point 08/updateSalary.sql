UPDATE employeege
set salary_employee = salary_employee*(1.15)
where trunc((sysdate -birthday_employee)/365)>29;
