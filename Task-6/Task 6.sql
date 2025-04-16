-- a. Extract Month from Date

SELECT
    CASE
        WHEN INSTR(Date, '/') = 2 THEN SUBSTR(Date, 1, 1)      
        ELSE SUBSTR(Date, 1, 2)                                
    END AS month
FROM
    online_sales_table
LIMIT 5;


-- b. Group by Year and Month

SELECT
    SUBSTR(Date, -4) AS year,
    CASE
        WHEN INSTR(Date, '/') = 2 THEN SUBSTR(Date, 1, 1)
        ELSE SUBSTR(Date, 1, 2)
    END AS month,
    COUNT(*) AS num_transactions
FROM
    online_sales_table
GROUP BY
    year, month;

-- c. Use SUM() for Total Revenue (Price * Quantity)

SELECT
    SUM(CAST(Price AS REAL) * CAST(Quantity AS INTEGER)) AS total_revenue
FROM
    online_sales_table;

	
-- d. Count Distinct Orders by TransactionNo

SELECT
    COUNT(DISTINCT TransactionNo) AS order_volume
FROM
    online_sales_table;

	
-- e. Sort Table by Date

SELECT
    *
FROM
    online_sales_table
ORDER BY
    Date ASC;

	
-- f. Filter for December 2019

SELECT
    *
FROM
    online_sales_table
WHERE
    SUBSTR(Date, -4) = '2019'
    AND (
        (INSTR(Date, '/') = 2 AND SUBSTR(Date, 1, 1) = '12') OR
        (INSTR(Date, '/') = 3 AND SUBSTR(Date, 1, 2) = '12')
    );
