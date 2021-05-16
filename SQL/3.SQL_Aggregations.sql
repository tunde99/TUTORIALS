LESSON 3: AGGREGATIONS

Quiz Questions
--------------

Use the SQL environment below to find the solution for each of the following questions. 

1. Find the total amount of poster_qty paper ordered in the orders table.

2. Find the total amount of standard_qty paper ordered in the orders table.

3. Find the total dollar amount of sales using the total_amt_usd in the orders table.

4. Find the total amount spent on standard_amt_usd and gloss_amt_usd paper for each order in the orders table. This should give a dollar amount for each order in the table.

5. Find the standard_amt_usd per unit of standard_qty paper. Your solution should use both an aggregation and a mathematical operator.


Solution
-----------
1. 
SELECT SUM(poster_qty) AS total_poster_sales
FROM orders;

2.
SELECT SUM(standard_qty) AS total_standard_sales
FROM orders;

3.
SELECT SUM(total_amt_usd) AS total_dollar_sales
FROM orders;

4.
SELECT standard_amt_usd + gloss_amt_usd AS total_standard_gloss
FROM orders;

5.
SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS standard_price_per_unit
FROM orders;


------------------------------
Questions: MIN, MAX, & AVERAGE
------------------------------

Use the SQL environment below to assist with answering the following questions. 


1. When was the earliest order ever placed? You only need to return the date.

2. Try performing the same query as in question 1 without using an aggregation function.

3. When did the most recent (latest) web_event occur?

4. Try to perform the result of the previous query without using an aggregation function.

5. Find the mean (AVERAGE) amount spent per order on each paper type, as well as the 
mean amount of each paper type purchased per order. Your final answer should have 
6 values - one for each paper type for the average number of sales, as well as the average amount.

Via the video, you might be interested in how to calculate the MEDIAN. Though this is more advanced 
than what we have covered so far try finding - what is the MEDIAN total_usd spent on all orders?

Solution
--------
1.
SELECT MIN(occurred_at) 
FROM orders;

2. 
SELECT occurred_at 
FROM orders 
ORDER BY occurred_at
LIMIT 1;

3.
SELECT MAX(occurred_at)
FROM web_events;

4.
SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;

5.
SELECT AVG(standard_qty) mean_standard, AVG(gloss_qty) mean_gloss, 
           AVG(poster_qty) mean_poster, AVG(standard_amt_usd) mean_standard_usd, 
           AVG(gloss_amt_usd) mean_gloss_usd, AVG(poster_amt_usd) mean_poster_usd
FROM orders;

6.
SELECT *
FROM (SELECT total_amt_usd
      FROM orders
      ORDER BY total_amt_usd
      LIMIT 3457) AS Table1
ORDER BY total_amt_usd DESC
LIMIT 2;