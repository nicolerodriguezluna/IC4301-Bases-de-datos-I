select first_name,second_name,identitycard,count(number_phone)
from PHONE
inner join person
ON person.id_person = phone.idperson
group by first_name,second_name,identitycard

