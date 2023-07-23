SELECT * FROM sales.date;

/*INNER JOIN
In summary, an inner join:

Takes on the rows from the primary table (the table specified first in the FROM clause).
Joins only the rows that have matching values according to the provided join condition.
Excludes rows that do not have a match in the other table. */

SELECT sum(sales.transactions.sales_amount) 
from sales.transactions
inner join sales.date 
on sales.transactions.order_date=sales.date.date
where sales.date.year=2020 and sales.transactions.market_code='Mark001';

select count(distinct product_code) from sales.transactions where sales.transactions.market_code='Mark001'
