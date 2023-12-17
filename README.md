# Rahul_Bijoy_Personal_Project_Portfolio
## MSc Digital Marketing and Data Science Student, Emlyon Business School
Analytics Portfolio

## 1. [Marketing Campaign Analysis](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/Marketing%20CampaignAnalysis%20Rahul_Eldho_Bijoy.ipynb)

This is our Python bootcamp project regarding the analysis of a marketing campaign. I cleaned the data and removed the missing values. I also removed the outliers to avoid reaching wrong conclusions in the analysis. I presented my findings and analysis in the Jupyter notebook.

## 2. [A/B Testing Project for E-commerce Website.](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/AB_Testing_Project_Rahul%20Eldho%20Bijoy.ipynb)

This is my personal project to understand A/B testing of a marketing campaign. The dataset we are using here contains two data files about two marketing campaigns (Control Campaign and Test Campaign). I was able to work with the Plotly library and used pandas to explore the dataset.

## 3. [Atliq Sales insights Data analysis Project using PowerBI](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/Salesinsights.pbix)
   
Atliq Hardware is a company that supplies computer hardware and peripherals to many clients like Excel stores, Nomad Stores, Surge Stores, and Electrical Sara Stores across India, and they supply all these equipment to them. Atliq Hardware has a head office in New Delhi, India, and they have many regional offices across different states in India. Bhavan Patel is the sales director of this company.

PROBLEM:

The market is growing dynamically, and Bhavan Patel is facing challenges in terms of sales in this dynamically growing market of this business. He has regional managers for North India, South India, and Central India, and they share insights verbally. Bhavan Patel is extremely frustrated with this since he can see that sales are declining, but he cannot get the entire picture of the sales insights. He is not able to properly interpret the data through Excel files shared by the regional managers. He needs to focus on the region where the sales are declining, so he needs to engage with customers in a better way.


ANALYSIS USING AIMS GRID

AIMS Grid
PURPOSE
To unlock sales insights that are not visible before to the sales team or decision support and automate them to reduce manual time spent in data gathering.

STAKEHOLDERS
- Sales Director
- Marketing Team
- Customer Service Team
- Data and Analytics Team
- IT team

END RESULT
An automated dashboard providing quick and latest sales insights in order to support data-driven decision making.

SUCCESS CRITERIA
- Dashboard uncovering sales order insights with the latest data available.
- Sales team is able to make better decisions and prove 10% cost savings of total spend.
- Sales Analysts stop data gathering manually in order to save 20% of their business time and re-invest in value-added activity.

USUAL BUSINESS SCENARIO FOR DATA ANALYSIS

The Sales data is stored in the MySQL database and is handled by the IT team. Also, we cannot do analytics directly in the database directly since the data volume is high   and we want to make sure that  MySQL database is not affected by the queries which we are using in analytics dashboards like PowerBI. So we have data warehouse where we take data from MySQL(OLTP-online transaction processing system). So we pull the data from OLTP and we perform ETL using  Informatica/Nifi and store it data warehouse like TERRA DATA. 

![REAL_WORLD_SCENARIO](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/Untitled%20picture.png)

PROCESS

- Data modelling
	
We implemented start schema  between tables to create relationship between tables in PowerBI
![Image Alt Text](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/Untitled%20picture1.png)

- ETL process using powerquery editor

![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/Untitled%20picture2.png)
![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/Untitled%20picture3.png)
![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/Untitled%20picture4.png)


There is some anomaly in INR USD values so we are checking the  issue and resolving it.

![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/Untitled%20picture5.png)
![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/Untitled%20picture6.png)

POWERBI DASHBOARD FOR SALES INSIGHTS

![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/Screenshot%202023-01-29%20180225.jpg)


## 4. [Google Merchandise Analysis using Google Data Studio.](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/Web_Analytics_Project.pdf)

As part of web analytics project, I analysed google merchandise store analysis using google data studio. I also need to  analyse Emlyon Business School Twitter page and analysed with their competitors page. 

## 5. [Zomato SQL Data Analysis Project](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/ZOMATO.sql)

In this project, data analysis of Zomato food delivery app using SQL. We are analysing the sales database of Zomato and found answers for each questions.

## 6. [Victoria Secrets Data Analysis](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/VictoriaSecrets%20analysis.ipynb)

In this python script, I tried to analyse the victoria secrets dataset by finding outputs to each questions using python, numpyu and pandas

## 7. [Airbnb PowerBI data analysis](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/airbnb%20-%20Final_one.pbix)

In this data viz challenge I need to clean and analyuse the airbnb dataset using powerBI. I created a data story by creating customer segments using number of rooms and type of rooms. Also I found the aprtments who have blank rating  and provided recommendations.

## 8. [Looker Studio Dashboard for V+ bike sharing company](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/V%2B_Marketing_dashboard.pdf)

V+ is a bike sharing company that has launched early 2022. Their marketing team needs to gain customer insight and optimize their marketing budget. My team created a looker studio dashboard and redefine their strategy for the coming months.

## 9. [R Cost of living Shiny app](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/Rproject/cost_of_living.html)


This is my R shiny app project   regarding a cost of living dashboard  for travellers and students which can be accessed through this link https://rahuleldho.shinyapps.io/Rfirstassignment_Rahul_Bijoy/

The first process is to clean the data and keep the neccessary columns. After this I created UI and server code based on the dashboard design which I proposed.

## 10. [IMDB movie BigQuery Data Analysis using SQL](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/BIGQUERY%20SQL%20PROJECT.pdf)

This is the course assignment where we need to find answers for the questions.

## 11. [HelloFresh Logisitics Case Study Problem](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/HelloFresh_Coding_casestudy.ipynb)

HelloFresh SE is the world's leading meal-kit company. This is HelloFresh Case study for logistics problem where I am trying to solve with linear programming approach.
*Problem statement*
HelloFresh need to import high quality steak from Argentina and Japan to serve three markets (M1, M2 and M3) in Europe. Market demand
(tons per week) for the next week is given by the following: M1=300, M2=300, M3=500.
To serve Europe we have two production plants available - one in North of Europe (N) and one in the South of Europe (S). Plant N
has a capacity of 600 tons/week and Plant S a capacity of 500 tons/week.
Currently HelloFresh use two distribution centres in Europe to connect the plants with the markets. They ship from production sites to the
distribution centres and distribute from there to three different markets.
The cost to transport a ton of steak from a production plant to a distribution center and from the distribution center to the
customers depends on the distances between the different locations. These costs are given in the two tables below:
They want to minimise the total weekly costs and and optimise the steak flow from the processing facility to the markets.
How many tons of steak should we ship through the two DCs(DC A and DC B) per week and what are the weekly costs?
![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/hellofreshimage.jpg)

## 12. [HelloFresh SQL Case Study](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/HelloFresh_SQL_Test_Final.pptx)

HelloFresh SE is the world's leading meal-kit company. This is HelloFresh Case study for logistics problem where I am trying to solve the following question using SQL
![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/images_sales_sinsights/hellofresh%20sql.jpg)
And given the following information:
● created_at fields have a timestamp of the time at which a row was inserted in a table for the first time.
● product_sku is unique for every product.
● product_family_handle is unique for every product family.
● Subscription status can be: ‘paused’, ‘cancelled’ or ‘active’.
● The fk_product field in the order table indicates the product that was purchased in an order. The fk_product_subscribed_to in the subscription table indicates the product a subscription is currently subscribed to. A subscription can change the product it is subscribed to at any moment.
● An order is generated when a box is shipped to a customer
Write SQL statements to retrieve the following information:
1. For the customer with email address ‘fancygirl83@hotmail.com’ show all product_skus the customer has an active subscription for.
2. Get all the customers that have an active subscription to a product that corresponds to a product family with product_family_handle = ‘classic-box’
3. Get all the paused subscriptions that have only received one box.
4. How many subscriptions do our customers have on average?
5. How many customers have ordered more than one product?
6. How many customers have ordered more that one product with the same subscription?
7. Get a list of all customers which got a box delivered to them two weeks ago, and the count of boxes that had been delivered to them up to that week (loyalty)
8. For all our customers, get the date of the latest order delivered to them and include associated product_sku, delivery_date and purchase price. If there were two orders delivered to the same customer on the same date, they should both appear.

## 13. [Brain Drain Analysis of Indian skilled force](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/Surveythesisanalysis.ipynb)

This is my analysis related to my thesis topic"Brain Drain in India: Causes, Consequences, and Solutions". The survey highlights diverse employment statuses among participants, with 48.9% actively employed, 37.8% engaged in education, 10% experiencing unemployment, and the remainder retirees, both in India and abroad. Analyzing employment patterns reveals a significant contribution to the labor force, a commitment to education, and concerns about job opportunities and employability.

Further exploration focuses on the pull and push factors influencing Indian citizens residing in India, indicating complexities in migration considerations. A nuanced examination of age, gender, and education levels provides insights into aspirations and concerns, emphasizing the intricate dynamics contributing to brain drain.

For Indian employees residing abroad, motivations for relocation align with common factors associated with brain drain, with 60% intending to relinquish Indian citizenship. The preferred countries for citizenship and financial aspects of expatriate life add depth to the understanding of identity, financial considerations, and global aspirations.

Analysis of Indian students studying abroad underscores motivations, challenges, and concerns with the Indian education system. Financial support, part-time opportunities, and the preference for practical skill application abroad highlight the need for nuanced policies to address the evolving global landscape of higher education and retain talent within India.
for detailed analysis please find the powerpoint slide [View Presentqtion](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/ths.pptx)

## 14. [Equativ SQL Project](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/EquativProject.zip)

Equativ or until 2022 SmartAdserver3, is a French company that provides technological solutions for online advertising management. Created in 2001 in Paris, it sells one of the three leading global full-stack ad management solutions, with an ad server 12> (Smart Adserver), an SSP monetization platform  for website publishers and a purchasing solution for media agencies (Demand-side platform).
This is an assessment to test SQL skills by analysing Equativ adserver.![image](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/equativschema.png)


-- ##### GENERAL ADVICE #####
-- All Mapping Table Ids are unique.
-- To filter on a date, the format is 'yyyy-MM-dd'
-- To see the columns of a table, click on the table name in the left pane
-- To place the exact name of a table, hover the table, click on the 3 dots > "Place name in SQL"
-- To use text, use single quotes ''
-- You can run your queries to test them and get the result.

-- QUESTION 1 
-- Get the total revenue (column TOTAL_PAID_PRICE_TRUE_COUNT) generated per type of Network (Use the whole dataset) 


SELECT MAPPING_NETWORK.NETWORK_TYPE, SUM(DAY_CLICK_AND_VIEW_RTB.TOTAL_PAID_PRICE_TRUE_COUNT) AS TotalRevenue
FROM DAY_CLICK_AND_VIEW_RTB
JOIN MAPPING_NETWORK ON DAY_CLICK_AND_VIEW_RTB.NETWORK_ID = MAPPING_NETWORK.NETWORK_ID
GROUP BY MAPPING_NETWORK.NETWORK_TYPE;




-- QUESTION 2 
-- How many Partners have NOT spent any cent on the Site Buscape on the 15th of February 2019? 
-- HINT : Use SITE_NAME from MAPPING_SITE
SELECT COUNT(DISTINCT PARTNER_ID) AS No_Of_Partners
FROM DAY_CLICK_AND_VIEW_RTB dcvr
JOIN MAPPING_SITE ms ON dcvr.SITE_ID = ms.SITE_ID
WHERE dcvr.TOTAL_PAID_PRICE_TRUE_COUNT=0 AND ms.SITE_NAME LIKE '%Buscape%' AND  dcvr.DAY = '2019-02-15'



-- QUESTION 3 
-- What's the eCPM (effective Cost Per Mille) for the Partner Google on Native ads for each Day? 
-- HINT 1 : The type of ads (Native / Video / Banner) is given by the table MAPPING_IMPRESSION_TYPE 
-- HINT 2 : eCPM = Revenue / Impressions * 1000


SELECT DAY,
       (SUM(TOTAL_PAID_PRICE_TRUE_COUNT) / SUM(IMPRESSIONS_TRUE_COUNT)) * 1000 AS eCPM
FROM DAY_CLICK_AND_VIEW_RTB as dcvr
JOIN MAPPING_PARTNER as mp ON dcvr.PARTNER_ID = mp.PARTNER_ID
JOIN MAPPING_IMPRESSION_TYPE as mit ON dcvr.IMPRESSION_TYPE = mit.IMPRESSION_TYPE
WHERE mp.PARTNER_NAME = 'Google'
  AND mit.IMPRESSION_NAME = 'Native'
GROUP BY DAY;




-- QUESTION 4 
-- What are the Top 10 Skyblog URLs (Referrer) in terms of number of impressions on the 10th of Feb 2019?
-- HINT : Skyblog URLs are ending with skyrock.com or skyrock.mobi


SELECT REFERRER, SUM(IMPRESSIONS_TRUE_COUNT) AS TotalImpressions
FROM DAY_CLICK_AND_VIEW_RTB
WHERE DAY = '2019-02-10' AND (REFERRER LIKE '%skyrock.com'  OR REFERRER LIKE '%skyrock.mobi' )
GROUP BY REFERRER
ORDER BY TotalImpressions DESC
LIMIT 10;




-- QUESTION 5 
-- What net revenue have we made on the 5th of February 2019? 
-- HINT : Net revenue is given by TOTAL_PAID_PRICE_TRUE_COUNT * SMART_REVSHARE


SELECT DAY,
  ((SUM(dcvr.TOTAL_PAID_PRICE_TRUE_COUNT)) * (SUM(mp.SMART_REVSHARE))) AS NetRevenue
FROM
  DAY_CLICK_AND_VIEW_RTB dcvr
  JOIN MAPPING_NETWORK mp ON dcvr.NETWORK_ID = mp.NETWORK_ID
WHERE
  dcvr.DAY = '2019-02-05'
  GROUP BY 1




-- QUESTION 6 
-- What's the maximum number of Sites on which a Partner has spent money and who is/are this/these Partner(s)?
-- HINT: Display only the Partner(s) reaching this max number


SELECT
  mp.PARTNER_NAME,
  COUNT(DISTINCT dcvr.SITE_ID) AS NumSites
FROM
  DAY_CLICK_AND_VIEW_RTB dcvr
  JOIN MAPPING_PARTNER mp ON dcvr.PARTNER_ID = mp.PARTNER_ID
WHERE
  dcvr.TOTAL_PAID_PRICE_TRUE_COUNT <> 0
GROUP BY
  mp.PARTNER_NAME
HAVING
  COUNT(DISTINCT dcvr.SITE_ID) = (
    SELECT
      COUNT(DISTINCT dcvr2.SITE_ID)
    FROM
      DAY_CLICK_AND_VIEW_RTB dcvr2
      JOIN MAPPING_PARTNER mp2 ON dcvr2.PARTNER_ID = mp2.PARTNER_ID
    WHERE
      dcvr2.TOTAL_PAID_PRICE_TRUE_COUNT <> 0
    GROUP BY
      mp2.PARTNER_ID
    ORDER BY
      COUNT(DISTINCT dcvr2.SITE_ID) DESC
    LIMIT 1  );

## 15. [BackMarket SQL Assessment](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/Backmarket_Casestudy_Rahul_Bijoy_BusinessDataAnalystIntern.zip)
Back Market is a e-commerce company French , created in 2014, which serves as an intermediary between individuals and professionals du reconditioning of electrical and electronic devices. It has offices in Paris, Bordeaux, , Berlin and counting, in 2021, just over 600 employees.
This is SQL assessment to analyse analytical skills.
"Hi,
Welcome to this SQL project. It's about payment data.
You have
-  3 tables ""MERCHANT"", ""ORDERLINE"" and ""PAYMENT"" detailed in the tab [Tables]. Just consider it like tables in a SQL environment
-  payment KPIs definitions in the tab [Payment definitions].
TABLE	FIELD	DESCRIPTION	COMMENT
MERCHANT	MERCHANT_ID_ANONYMIZED	Merchant (=seller) unique ID	Primary key
MERCHANT	COUNTRY_CODE	BackMarket website from which the client has done his/her purchase online (1 website per market)	
MERCHANT	PAYPAL_START	Date when the merchant started to offer Paypal	
MERCHANT	FIRST_ORDER	A	
ORDERLINE	ORDERLINE_ID	ID of the orderline - 1 product in the basket corresponds to 1 orderline	Primary key
ORDERLINE	DATE_DELIVERY_ORDER	Delivery date of the order	
ORDERLINE	DATE_PAYMENT_ORDER	Payment date of the order	
ORDERLINE	PRODUCT_ID	ID of the product	
ORDERLINE	PRODUCT_TITLE	Title of the product	
ORDERLINE	BRAND	Brand of the product	
ORDERLINE	CATEGORY_3_NAME	Category of the product	
ORDERLINE	MERCHANT_ID_ANONYMIZED	Merchant (=seller) unique ID	
ORDERLINE	QUANTITY	Quantity on the orderline (for example QUANTITY=2, means there is 2 times the same article)	
ORDERLINE	PRICE	Price of the product (already multiplied by the quantity)	
ORDERLINE	SHIPPING_PRICE	Shipping fee on the orderline	
ORDERLINE	PAYMENT_ID	Payment try unique ID	
ORDERLINE	STATE_ORDERLINE	The STATE of the orderline	"0 = New `Orderline`. The merchant has to wait for payment confirmation.
1 = `Orderline` is paid. The merchant has received the payment and must validate or cancel the `Orderline`.
2 = `Orderline` is accepted by the merchant, who must now prepare the `Product` for shipment.
3 = The merchant has deliver the `Orderline` to the shipping company. The package delivery is in progress.
4 = `Orderline` is cancelled. The customer will be refunded for the `Orderline`.
5 = Orderline is refunded before shipping.	
6 = Orderline is refunded after shipping. The customer made a refund request.
7 = Orderline is not paid. The payment has been refused "
PAYMENT	PAYMENT_ID	Payment try/attempt unique ID	Primary key
PAYMENT	PAYMENT_INTENTION_ID	Payment intention unique ID (group all the successive payment attempts of a given client a given day until a payment success)	See 'Intuition definition example' worksheet for an example
PAYMENT	CLIENT_ID_ANONYMIZED	Client unique ID	
PAYMENT	DATE_CREATION	Payment date of the order	
PAYMENT	COUNTRY_CODE	BackMarket website from which the client has done his/her purchase online (1 website per market)	
PAYMENT	PAYMENT_METHOD	Payment method (CARD, PAYPAL, ONEY, APPLE_PAY)	
PAYMENT	BANK_COUNTRY	Country of the client Bank	
PAYMENT	BANK_ANONYMIZED	Bank of the client (only availiable of credit card transaction)	
PAYMENT	PRICE_TO_PAY	Final price paid by the client (includes shipping price, promo codes (if any) and services like insurance (if any))	
PAYMENT	CURRENCY	Currency of the transaction	
PAYMENT	ERROR_GROUP	Error type (DROP, TECHNICAL, FRAUD, AUTHORIZATION)	
PAYMENT	STATE	State of the payment : 0 : failed, 1 success	

## 16. [Deezer SQL assessment](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/Deezerproject.zip)
Deezer is a French music streaming service founded in 2007. The company has been a subsidiary of Access Industries since 2016. Deezer is available via web and on various digital platforms, including Android, iOS, macOS and others.
This is SQL analytical skill and case study analysis. Please find my SQL queries and case study analysis.

## 17. [Nina Care Product Data Analyst Project](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/NinaCare_ProjectRahul_Bijoy.zip)

Nina Care's goal is to find the perfect match between families and their au pair or nanny. They want to revolutionize the (child)care branch using AI matching algorithms for workers and families, Nina is an internationally operating childcare platform solving the problem of arranging reliable, affordable childcare.

From matching and automated screening, Nina also offers a dynamic pricing feature, insurance and easy payment via the app. Starting with childcare via its nanny and au pair subscription products, Nina also has an ambition to expand into pet and elderly care to become the dominant care marketplace solution in the EU and US.

I am doing case study analysis and python analytical test to improve my python skills  during my internship process.


 








	
	
 




