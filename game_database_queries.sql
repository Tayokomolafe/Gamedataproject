SELECT * FROM Transactions


-- 1. Write a query to return the number of unique customers that played in first 7 days of the year

WITH Unique_customers_tbl AS (
SELECT DISTINCT CustomerID
FROM Transactions 
WHERE TransactionDate BETWEEN '2022-01-01' AND '2022-01-07'
)
SELECT COUNT(*)
FROM Unique_customers_tbl 

-- 2 Write a query to return the unique game categories in reverse alphabetical order

SELECT DISTINCT GameCategory
FROM Transactions
ORDER BY GameCategory DESC;


-- 3 Write a query to return how many times each game was played between 3rd and 9th January

SELECT GameCategory, count(1)
FROM Transactions
 WHERE TransactionDate BETWEEN '2022-01-03' AND '2022-01-09'
GROUP BY GameCategory;




-- 4. Write a query to return Revenue by day, for days when this is £10 or more
SELECT DAY(TransactionDate), SUM(Revenue)
FROM Transactions
WHERE Revenue >= 10
GROUP BY DAY(TransactionDate);

-- 5	Write a query to return the number of customers in the following age-groups: 18-34, 35-54, 55+

SELECT COUNT(1),
CASE WHEN Age BETWEEN 18 AND 34 THEN '18-34'
WHEN Age BETWEEN 35 AND 54 THEN '35 -34'
WHEN Age  >= 55 THEN '55+' 
ELSE Age 
END AS Age_Bucket 
FROM Customers
GROUP BY Age_Bucket


--- 6. Write a query to return the revenue for game category ‘Sportsbook’ split by Gender

SELECT Gender, SUM(Revenue)
FROM Customers c
JOIN Transactions t
ON c.CustomerId = t.CustomerId
AND GameCategory = 'Sportsbook'
GROUP BY Gender