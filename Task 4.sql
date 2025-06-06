Task 4
SQL Queries used in task 4

USE classicmodels;

1)Using SELECT, WHERE, ORDER BY, GROUP BY:

a)SELECT:

 SELECT * FROM customers;

 SELECT orderNumber, orderDate, status FROM orders;

b)WHERE:

 SELECT customerNumber, customerName, country, creditLimit
 FROM customers
 WHERE country = 'UK' AND creditLimit > 50000;

c)ORDER BY:

 SELECT productCode, productName, buyPrice
 FROM products
 ORDER BY buyPrice DESC;

d)GROUP BY:

 SELECT country, COUNT(*) AS total_customers
 FROM customers
 GROUP BY country;

e)SELECT, WHERE, ORDER BY, GROUP BY:

 SELECT country, COUNT(*) AS total_customers
 FROM customers
 WHERE creditLimit > 45000
 GROUP BY country
 ORDER BY total_customers DESC;

2)Use JOINS (INNER, LEFT, RIGHT)

a)INNER JOIN:

  SELECT 
    c.customerName,
    e.firstName AS salesRepFirstName,
    e.lastName AS salesRepLastName
  FROM customers c
  INNER JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

b)LEFT JOIN:

  SELECT 
    c.customerName,
    p.amount
  FROM customers c
  LEFT JOIN payments p ON c.customerNumber = p.customerNumber ORDER BY c.customerName;

c)RIGHT JOIN:
   
   SELECT
    p.customerNumber,
    c.customerName,
    p.amount
  FROM payments p LEFT JOIN customers c ON p.customerNumber = c.customerNumber;

3)subqueries:

 SELECT customerNumber, amount
 FROM payments
 WHERE amount > (SELECT AVG(amount) FROM payments);

4)Aggregate functions (SUM, AVG)

a)SUM:

 SELECT customerNumber, SUM(amount) AS total_paid
 FROM payments
 GROUP BY customerNumber
 ORDER BY total_paid DESC;

b)AVG:

 SELECT 
    orderNumber,
    AVG(priceEach * quantityOrdered) AS avg_order_value
 FROM orderdetails
 GROUP BY orderNumber;

5)Create views:

a)View: High-value customers:
 CREATE OR REPLACE VIEW high_value_customers AS
 SELECT customerNumber, customerName, creditLimit
 FROM customers
 WHERE creditLimit > 100000;

b)View: High-value customers:
  CREATE VIEW monthly_payments AS
  SELECT 
    DATE_FORMAT(paymentDate, '%Y-%m') AS month,
    SUM(amount) AS total_payment
FROM payments
GROUP BY month;


6)Optimize queries with Indexes:

  CREATE INDEX idx_customer_number ON payments(customerNumber);

  CREATE INDEX idx_order_status ON orders(status);





