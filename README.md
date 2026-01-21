Subscription & Retention Analytics using SQL
📌 Project Overview

This project focuses on analyzing customer churn, retention, and revenue impact for a subscription-based business using SQL. The goal is to uncover why customers churn, measure retention performance, and estimate Monthly Recurring Revenue (MRR) and revenue loss due to churn.

This analysis reflects real-world business problems faced by SaaS and telecom companies and follows industry-standard analytical approaches.

🎯 Business Objectives

Analyze customer retention and churn trends

Perform cohort analysis based on customer tenure

Calculate Monthly Recurring Revenue (MRR)

Estimate revenue lost due to churn

Identify high-risk contract types

Provide insights to improve customer lifetime value (CLTV)

🧰 Tools & Technologies

SQL (MySQL)

Relational Database Concepts

Aggregations, CASE statements, Subqueries

Business KPIs (MRR, Churn Rate, Retention Rate)

📂 Dataset

Source: Public subscription churn dataset (Kaggle)

Key Columns Used:

customerID

tenure

MonthlyCharges

Contract

Churn

🔍 Key Analyses Performed
1️⃣ Customer Cohort Analysis (Tenure-Based)

Customers were grouped into tenure cohorts to analyze how retention changes over time.

Cohorts:

0–6 months

7–12 months

13–24 months

25+ months

Insight:

Customers with longer tenure show significantly higher retention.

Early-stage customers (0–6 months) have the highest churn risk.

2️⃣ Retention Rate Calculation

Retention rate was calculated for each cohort to measure customer stickiness.

Metric:

Retention Rate = Retained Customers / Total Customers


Insight:

Retention improves steadily as tenure increases.

Indicates strong long-term customer loyalty.

3️⃣ Monthly Recurring Revenue (MRR)

MRR was calculated using monthly subscription charges.

Analysis Includes:

Total MRR from active customers

MRR contribution by contract type

Insight:

Long-term contracts contribute more stable revenue.

Month-to-month customers generate volatile revenue.

4️⃣ Revenue Lost Due to Churn

Estimated revenue loss by identifying churned customers and summing their monthly charges.

Insight:

A significant portion of revenue loss comes from short-term contracts.

Reducing churn in early tenure can substantially improve revenue.

5️⃣ Contract-wise Churn & Retention Analysis

Compared churn and retention rates across different contract types.

Insight:

Month-to-month contracts have the highest churn rate.

One-year and two-year contracts show strong retention and revenue stability.

📈 Business Impact

Identified high-risk customer segments

Highlighted importance of long-term contracts

Provided data-driven insights to reduce churn and protect MRR

Demonstrated real-world subscription analytics skills

🧠 Key Learnings

How to perform cohort analysis without signup dates

Translating SQL outputs into business insights

Measuring retention, churn, and revenue KPIs

Writing clean, production-ready SQL queries

🏆 Skills Demonstrated

SQL Analytics

Customer Churn Analysis

Retention & Cohort Analysis

Revenue & MRR Calculations

Business-Oriented Data Analysis

📌 How This Project Is Useful

This project is suitable for:

Data Analyst roles

Business Analyst roles

Product & Growth Analytics

Subscription-based business analysis

📬 Contact

Prateek Kudari
📧 LinkedIn: www.linkedin.com/in/prateek-kudari


⭐ If you like this project

Give it a ⭐ on GitHub — it motivates me to build more real-world analytics projects!
