Hi there!
I am going to be writing my SQL queries here as I learn from the Udacity nanodegree course
on Python for Data Science

Can You Use LIMIT?
------------------

Try using LIMIT yourself below by writing a query that displays all the data in 
the occurred_at, account_id, and channel columns of the web_events table, 
and limits the output to only the first 15 rows.

My solution
-----------

SELECT occurred_at, account_id, channel
FROM web_events
LIMIT 15;

The LIKE operator is used with non-numeric conditions. 
Place the conditions between single quotes. 
Filter the result using wildcard (%) to represent 1 or more characters.

Questions using the LIKE operator
---------------------------------

Use the accounts table to find

1. All the companies whose names start with 'C'.

2. All companies whose names contain the string 'one' somewhere in the name.

3. All companies whose names end with 's'.


My solution
-----------
1.
SELECT *
  FROM accounts
WHERE name LIKE 'C%';

2.
SELECT *
  FROM accounts
WHERE name LIKE '%one%';

3.
SELECT *
  FROM accounts
WHERE name LIKE '%s';

The IN operator is used to select multiple conditions.

Questions using IN operator
---------------------------
1. Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and Nordstrom.

2. Use the web_events table to find all information regarding individuals who were contacted via the channel of organic or adwords.

My solution
-----------
1.
SELECT name, primary_poc, sales_rep_id
  FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

2.
SELECT *
  FROM web_events
WHERE channel IN ('organic', 'adwords');

Questions using AND and BETWEEN operators
------------------------------------------
1. Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.

2. Using the accounts table, find all the companies whose names do not start with 'C' and end with 's'.

3. When you use the BETWEEN operator in SQL, do the results include the values of your endpoints, or not? 
Figure out the answer to this important question by writing a query that displays 
the order date and gloss_qty data for all orders where gloss_qty is between 24 and 29. 
Then look at your output to see if the BETWEEN operator included the begin and end values or not.

4. Use the web_events table to find all information regarding individuals who were contacted via the 
organic or adwords channels, and started their account at any point in 2016, sorted from newest to oldest.

My solution
-----------
1. 
SELECT *
  FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

2. 
SELECT name
  FROM accounts
WHERE name NOT LIKE 'C%' and name NOT LIKE '%s';

3. 
SELECT occurred_at, gloss_qty
  FROM orders
WHERE gloss_qty BETWEEN 24 AND 29;

Note: the result included the values of the endpoints.

4. 
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC;

Questions using the OR operator
-------------------------------
1. Find list of orders ids where either gloss_qty or poster_qty is greater than 4000. Only include the id field in the resulting table.

2. Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000.

3. Find all the company names that start with a 'C' or 'W', and the primary contact contains 'ana' or 'Ana', but it doesn't contain 'eana'.

My solution
-----------
1.
SELECT id
  FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000;

2.
SELECT *
  FROM orders
WHERE standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000);

3.
SELECT name
  FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
AND (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
AND primary_poc NOT LIKE '%eana%';

