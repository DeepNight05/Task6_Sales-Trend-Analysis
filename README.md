# TASK 6: Sales Trend Analysis Using Aggregations

## Objective
Perform sales trend analysis to determine monthly revenue and order volume using SQL aggregation techniques.

---

## 🛠Tools
- Any SQL-based RDBMS: **PostgreSQL**, **MySQL**, or **SQLite**
- This task is demonstrated using SQLite-compatible syntax. Adjust functions as necessary for your SQL engine.

---

## Dataset
**Table:** `online_sales_table`

**Relevant Columns:**
- `Date` (format may vary: `MM/DD/YYYY` or `M/DD/YYYY`)
- `Price`
- `Quantity`
- `TransactionNo`
- `Product_ID`

---

## Task Steps Overview

1. **Extract the Month**  
   Extract the numeric month from the `Date` field using string manipulation or date functions.

2. **Group by Year and Month**  
   Group the data by extracted year and month to prepare for aggregation.

3. **Calculate Total Revenue**  
   Multiply `Price` by `Quantity` and use `SUM()` to compute total monthly revenue.

4. **Count Distinct Orders**  
   Use `COUNT(DISTINCT TransactionNo)` to find total order volume per month.

5. **Sort Results**  
   Sort the data by date or month/year to view the trend chronologically.

6. **Filter by Date**  
   Optionally, filter the dataset for specific periods (e.g., December 2019) for targeted insights.

---

## Deliverables

- A complete SQL script implementing the above analysis.
- A results table showing monthly revenue and order volume trends.

---

## Notes

- Use `EXTRACT(MONTH FROM order_date)` if working in PostgreSQL.
- Be mindful of different date formats across SQL engines and adjust string parsing accordingly.
- The goal is to identify trends, spikes, or drops in monthly performance.
