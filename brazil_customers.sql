--return all customers who are from Brazil
select CustomerId, concat(FirstName, ' ', LastName) as FullName, Country
from customer
where country like 'Brazil'