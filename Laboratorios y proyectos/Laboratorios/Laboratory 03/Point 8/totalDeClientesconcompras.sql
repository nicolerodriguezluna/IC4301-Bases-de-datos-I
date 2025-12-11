Select count(id_person)
from(select id_person,count(idCustomer)
from customer
inner join purchase
On purchase.idcustomer = customer.id_customer
group by customer.id_person)

