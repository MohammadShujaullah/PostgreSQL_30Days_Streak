SELECT*FROM products;

--Assign a unique row number to each product within the same category.
SELECT product_name,category,price,ROW_NUMBER() OVER (PARTITION BY category ORDER BY price DESC) AS CATEGORY_WISE_DESC FROM products;--assign unique no. even the same price 
SELECT product_name,category,price, DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS CATEGORY_WISE_DESC FROM products;-- not assign unique no. even the same price
SELECT product_name,category,price, RANK() OVER (PARTITION BY category ORDER BY price DESC) AS CATEGORY_WISE_DESC FROM products;-- not assign unique no. even trhe same price


--Calculate the running total of prices across all products.
SELECT product_name,category,price,SUM(price) OVER (PARTITION BY category ORDER BY price DESC) AS CATEGORY_WISE_DESC FROM products;

SELECT product_name,category,price,avg(price) OVER (PARTITION BY category ORDER BY price DESC) AS CATEGORY_WISE_DESC FROM products;


/*both RANK() and DENSE_RANK() assign ranks to rows
based on a specified order, but they differ in how they handle ties (rows with the same values). 
RANK() assigns the same rank to tied rows and then skips subsequent ranks to account for the tie,
while DENSE_RANK() assigns the same rank to tied rows but does not skip any ranks, resulting in consecutive rankings. */