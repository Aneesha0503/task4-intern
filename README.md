# task4-intern
# ClassicModels SQL Practice Project

This repository offers SQL practice based on the ClassicModels sample database—a retail business schema involving products, orders, customers, employees, and payments.

## Project Files

- mysqlsampledatabase.sql — Creates the classicmodels schema with all necessary tables and sample data.
- Task 4.sql — Contains SQL queries exploring data retrieval, aggregation, joins, subqueries, views, and indexing.

## Tools Used

- MySQL Workbench – For running queries and visualizing database structure (any GUI tool can be used)
- Text Editor – For editing `.sql` scripts (e.g:Notepad)

## Process Overview

1. *Database Setup*  
   Imported mysqlsampledatabase.sql to create and populate the classicmodels schema.

2. *Data Exploration & Querying*  
   - Retrieved data using SELECT, WHERE, GROUP BY, ORDER BY
   - Filtered based on conditions (e.g., credit limit, country)

3. *Joins*  
   - Applied INNER JOIN, LEFT JOIN, and RIGHT JOIN to combine related data from multiple tables

4. *Subqueries*  
   - Used nested queries to compare values (e.g., payments above average)

5. *Aggregate Functions*  
   - Used SUM() and AVG() for total and average calculations (e.g., payments, order values)

6. *View Creation*  
   - Created views for reusable queries:
     - high_value_customers (creditLimit > 100000)
     - monthly_payments (total by month)

7. *Indexing for Optimization*  
   - Created indexes to improve performance:
     - On customerNumber in payments
     - On status in orders
