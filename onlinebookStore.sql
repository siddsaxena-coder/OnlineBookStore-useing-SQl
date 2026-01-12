-- Q1
-- select  * from books
-- 	where genre like "Fiction"

-- Q2 
-- select * from books 
-- 	where Published_Year<1950

-- Q3
-- select * from customers
-- where Country="Canada";

-- Q4
-- select * from orders
-- where Order_Date between "2023-11-01" and "2023-11-30"

-- Q5
-- select sum(stock) total_stock from books; 

-- Q6
-- select * from books
-- order by price desc
-- limit 1

-- Q7
-- select C.name ,O.Quantity from orders O 
-- 		left join customers C
--         on C.Customer_ID=O.Customer_ID
-- where Quantity>1

-- Q8
-- select * from orders
-- where Total_Amount>20;

-- Q9
-- select distinct(genre) from books

-- Q10
-- select * from books
-- order by stock

-- q11	
-- select sum(total_amount) total_revenue from orders

-- Q12
-- select B.genre,sum(O.Quantity) total_books_sold from books B 
-- 		left join orders O 
--         on B.Book_ID=O.Book_ID
--         group by B.genre

-- Q13
-- select round(avg(price),2) from books
-- where Genre="fantasy"

-- Q14
-- SELECT o.customer_id, c.name, COUNT(o.Order_id) AS ORDER_COUNT
-- FROM orders o
-- JOIN customers c ON o.customer_id=c.customer_id
-- GROUP BY o.customer_id, c.name
-- HAVING COUNT(Order_id) >=2;

-- Q15
-- select B.title,count(O.Order_ID) from books B
-- 	join orders O 
--     on B.Book_ID=O.Book_ID
--     group by B.title
--     order by count(O.Order_ID) desc
--     limit 1

-- Q16
-- select * from books
-- where genre="fantasy"
-- order by price desc
-- limit 3

-- Q17
-- select distinct(B.author),sum(O.Quantity) from books B 
-- 	left join orders O
--     on B.Book_ID=O.Book_ID
--     group by B.author
--     order by sum(O.Quantity) desc
--     
-- Q18    
-- select C.name , C.city ,O.Total_Amount from customers C left join orders O
--  on C.Customer_ID=O.Order_ID
--  where O.Total_Amount>30

-- Q19
-- SELECT c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
-- FROM orders o
-- JOIN customers c ON o.customer_id=c.customer_id
-- GROUP BY c.customer_id, c.name
-- ORDER BY Total_spent Desc LIMIT 1;

-- Q20
-- SELECT b.book_id, b.title, b.stock, COALESCE(SUM(o.quantity),0) AS Order_quantity,  
-- 	b.stock- COALESCE(SUM(o.quantity),0) AS Remaining_Quantity
-- FROM books b
-- LEFT JOIN orders o ON b.book_id=o.book_id
-- GROUP BY b.book_id ORDER BY b.book_id;

