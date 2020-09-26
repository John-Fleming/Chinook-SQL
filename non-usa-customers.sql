--non_usa_customers query
--return all customers who aren't from the US
select CustomerId, concat(FirstName, ' ', LastName) as FullName, Country
from customer
where country <> 'USA' --or the below is the same
-- where country not like 'USA'