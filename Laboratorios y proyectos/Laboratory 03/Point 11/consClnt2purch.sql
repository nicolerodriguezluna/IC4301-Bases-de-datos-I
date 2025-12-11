Select id_customer
from (select customer.id_customer,count(idCustomer)
from purchase
inner join customer
On purchase.idcustomer = customer.id_customer
GROUP BY (customer.id_customer)
HAVING count(idCustomer) > 2)