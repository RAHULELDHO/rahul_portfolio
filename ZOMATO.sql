drop table if exists goldusers_signup;
CREATE TABLE goldusers_signup(userid integer,gold_signup_date date); 

INSERT INTO goldusers_signup(userid,gold_signup_date) 
 VALUES (1,'09-22-2017'),
(3,'04-21-2017');

drop table if exists users;
CREATE TABLE users(userid integer,signup_date date); 

INSERT INTO users(userid,signup_date) 
 VALUES (1,'09-02-2014'),
(2,'01-15-2015'),
(3,'04-11-2014');

drop table if exists sales;
CREATE TABLE sales(userid integer,created_date date,product_id integer); 

INSERT INTO sales(userid,created_date,product_id) 
 VALUES (1,'04-19-2017',2),
(3,'12-18-2019',1),
(2,'07-20-2020',3),
(1,'10-23-2019',2),
(1,'03-19-2018',3),
(3,'12-20-2016',2),
(1,'11-09-2016',1),
(1,'05-20-2016',3),
(2,'09-24-2017',1),
(1,'03-11-2017',2),
(1,'03-11-2016',1),
(3,'11-10-2016',1),
(3,'12-07-2017',2),
(3,'12-15-2016',2),
(2,'11-08-2017',2),
(2,'09-10-2018',3);


drop table if exists product;
CREATE TABLE product(product_id integer,product_name text,price integer); 

INSERT INTO product(product_id,product_name,price) 
 VALUES
(1,'p1',980),
(2,'p2',870),
(3,'p3',330);


select * from sales;
select * from product;
select * from goldusers_signup;
select * from users;


--1. What is the total amount  each customer spent on zomato?
SELECT a.userid,SUM(b.price) FROM
sales a inner join product b ON
a.product_id = b.product_id 
GROUP BY a.userid



--2. how many  days each  customer visited zomato?
SELECT userid, COUNT(DISTINCT created_date) AS distinct_days  FROM  sales
GROUP BY userid

--3. What was the first product purchased by  each customer?

SELECT * FROM 
(SELECT *,RANK() OVER (PARTITION BY userid ORDER BY created_date) rnk FROM sales) a 
WHERE rnk = 1

--4. What is the most  purchased  item on the menu  and how many  times it was purchased by all customers?

SELECT TOP 1 product_id, COUNT(product_id) FROM sales 
GROUP BY  product_id 
ORDER BY COUNT(product_id) DESC 

--5 Which  item was the most popular  for each customer?
SELECT * FROM(
SELECT *, RANK() OVER (PARTITION BY  userid ORDER BY cnt DESC) rnk FROM 
( SELECT  userid,product_id,COUNT(product_id) cnt FROM sales GROUP BY  userid,product_id)a)b 
WHERE rnk=1

--6.  Which item was purchased first by  the customer  after they became a member?
SELECT * FROM 
(SELECT c.*,RANK() OVER (PARTITION BY userid ORDER BY created_date ) rnk FROM
 (SELECT a.userid,a.created_date,a.product_id,b.gold_signup_date FROM sales a INNER JOIN 
 goldusers_signup b ON  a.userid = b.userid  AND created_date >= gold_signup_date) c)d WHERE rnk =1;

 --7.  Which item was purchased just before  the customer  became a member?
 SELECT * FROM 
(SELECT c.*,RANK() OVER (PARTITION BY userid ORDER BY created_date ) rnk FROM
 (SELECT a.userid,a.created_date,a.product_id,b.gold_signup_date FROM sales a INNER JOIN 
 goldusers_signup b ON  a.userid = b.userid  AND created_date <= gold_signup_date) c)d WHERE rnk =1;

 --8. What is the total orders and amount  spent for  each member  before  they became a member?
SELECT userid,COUNT(created_date) order_purchased,SUM(price) total_amount_Apent FROM
(SELECT c.*,d.price FROM
(SELECT a.userid,a.created_date,a.product_id,b.gold_signup_date FROM sales a  INNER JOIN
goldusers_signup b ON  a.userid=b.userid AND created_date <= gold_signup_date) c  INNER JOIN
product  d ON   c.product_id = d.product_id) e  
GROUP BY userid;

/*
9. If you are buying  each product  generates  points for examples  5rs  = 2 zomato point  and each product  
 has different purchasing points for example for p1  5 Rs  = 1 zomato point and  p3  5Rs =1 zomato point 
 calculate  points collected  by each customers  and for  which product  most points  have been given  till now
*/

SELECT userid, SUM(total_points)*2.5 total_points_earned FROM
(SELECT e.*, amt/points total_points FROM
(SELECT d.*, CASE 
             WHEN product_id =1  THEN 5
			 WHEN product_id = 2 THEN  2
			 WHEN product_id = 3 THEN 5
			 ELSE 0
			 END AS  points FROM
(SELECT c.userid,c.product_id,SUM(price) amt FROM
(SELECT  a.*, b.price from sales a INNER JOIN  product b  ON a.product_id = b.product_id) c
 GROUP BY  userid, product_id )d)e)f GROUP BY userid;


 /*
 10. In the first one year  after a customer joins  the gold program  ( including their join date)  irrespective of
 what the customer has purchased they earn  5 zomato points for every 10 rs spent who earned more 1 or 3 and what was
 their points earnings in their first year */

 SELECT c.*, d.price*0.5 Total_points_earned FROM
 (SELECT a.userid,a.created_date,a.product_id,b.gold_signup_date FROM sales a  INNER JOIN
 goldusers_signup b ON a.userid= b.userid AND  created_date >= gold_signup_date AND created_date < DATEADD(year,1,gold_signup_date))c
 INNER JOIN product D ON c.product_id = d.product_id;

 -- 11. Rank all transactions of the customers
 SELECT *,
RANK() over (partition by userid order by created_date ) rnk 
FROM sales;

---12. Rank all transactions for each member whenever they are zomato gold members 
---for every non-gold member transaction mark as na

SELECT 
  e.*, 
  CASE WHEN rnk = 0 THEN 'na' ELSE rnk END AS rnkk 
from 
  (
    SELECT 
      c.*, 
      CAST(
        (
          CASE WHEN gold_signup_date is null THEN 0 ELSE rank() over (
            PARTITION BY userid 
            ORDER BY 
              created_date desc
          ) end
        ) as varchar
      ) as rnk 
    FROM 
      (
        SELECT a.userid, 
        a.created_date, 
        a.product_id, 
        b.gold_signup_date 
        FROM 
          sales a 
          LEFT JOIN goldusers_signup b 
          on a.userid = b.userid 
          AND created_date >= gold_signup_date
      ) c
  ) e;





      
