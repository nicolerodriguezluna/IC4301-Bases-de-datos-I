SELECT customer.id_customer,purchasexproduct.idproduct
from customer
inner join purchase
ON customer.id_customer = purchase.idcustomer
inner join purchasexproduct
ON purchase.idpurchase = purchasexproduct.idpurchase
GROUP BY(customer.id_customer,purchasexproduct.idproduct)
