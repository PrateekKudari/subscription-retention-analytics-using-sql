create database tenure;

use tenure;

select * from customerchurn
limit 10 ;

-- How long do customers stay active after joining, and how does retention change over time?

-- This helps companies:

-- Measure product stickiness

-- Compare retention quality

-- Improve long-term revenue


-- We group customers by tenure range.

select customerID, tenure ,
case 
when tenure between 0 and 6 then '0-6 month'
when tenure between 7 and 12 then '7-12 month'
when tenure between 13 and 24 then '13-24 month'
else  '25+ month'
end as tenure_cohart
from customerchurn;


-- Cohort Size & Retained Customers
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained_customers
FROM (
    SELECT Churn,
        CASE
            WHEN tenure BETWEEN 0 AND 6 THEN '0–6 months'
            WHEN tenure BETWEEN 7 AND 12 THEN '7–12 months'
            WHEN tenure BETWEEN 13 AND 24 THEN '13–24 months'
            ELSE '25+ months'
        END AS tenure_cohort
    FROM customerchurn
) as t
GROUP BY tenure_cohort
ORDER BY tenure_cohort;


-- Retention Rate by Cohort

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS retention_rate_percent
FROM (
    SELECT tenure,Churn,
        CASE
            WHEN tenure BETWEEN 0 AND 6 THEN '0–6 months'
            WHEN tenure BETWEEN 7 AND 12 THEN '7–12 months'
            WHEN tenure BETWEEN 13 AND 24 THEN '13–24 months'
            ELSE '25+ months'
        END AS tenure_cohort
    FROM customerchurn
) as t
GROUP BY tenure_cohort
ORDER BY tenure_cohort;





-- Total MRR (Current Active Customers)

select round(sum(MonthlyCharges),2) as total_mrr 
from customerchurn
where Churn='No';


-- MRR Lost Due to Churn
select round(sum(MonthlyCharges),2) as total_mrr
from customerchurn
where Churn='Yes';


-- MRR by Contract Type

select Contract, round(sum(MonthlyCharges),2) as mrr
from customerchurn
where Churn='No'
group by Contract
order by mrr desc;


-- Churn Rate by Contract

select Contract,sum(case when Churn='No' then 1 else 0 end) as churned_customers,
round(  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) as churn_rate_percent
from customerchurn
group by Contract
order by churn_rate_percent desc;

-- Retention Rate by Contract
select Contract,count(*) as total_customers,SUM(case when Churn = 'No' then 1 else 0 end) as retained_customers,
    ROUND(SUM(case when Churn = 'No' then 1 else 0 end) * 100.0 / COUNT(*),2) as retention_rate_percent
from customerchurn
group by Contract
order by retention_rate_percent desc;
