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

##10. [IMDB movie BigQuery Data Analysis using SQL](https://github.com/RAHULELDHO/rahul_portfolio/blob/main/BIGQUERY%20SQL%20PROJECT.pdf)

This is the course assignmnet where we need to find answers for the questions.










	
	
 




