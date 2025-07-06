# Kultra-Mega-Stores-Analysis
A detailed analysis of sales and order data for a retail company, focusing on identifying key trends, top/bottom performers, and operational efficiencies using SQL Queries

## Project Overview
To extract business inseight from historical order data Using SQL skills.

## Tools Used
SQL Server (for Querying and Analysis)

## Files in this Repository
KMS_Inventory_Queries.sql — contains all SQL queries used
README.md — summary report with findings and insights

## Data Source
- Kms sql.excel file

## Exploratory Data Analysis
EDA involved the exploring of the Data to answer some question about the data

## Case Scenarios & Questions
### Case Scenario I – Sales & Cost Analysis

-Which product category had the highest sales?
-What are the Top 3 and Bottom 3 regions in terms of sales?
-What were the total sales of appliances in Ontario?
-Advise the management on increasing revenue from the bottom 10 customers
-KMS incurred the most shipping cost using which shipping method?
-Who are the most valuable customers, and what do they typically purchase?
-Which small business customer had the highest sales?
-Which corporate customer placed the most orders (2009–2012)?
-Which consumer customer was the most profitable?
-Which customers returned items, and what segment do they belong to?
-Based on Order Priority, did KMS spend appropriately on shipping (Delivery Truck vs Express Air)?


## Findings: Kultra Mega Stores Inventory (2009–2012)
This report summarizes key insights obtained from transactional data of Kultra Mega Stores (KMS) between 2009 and 2012. The analysis was conducted using SQL on the KMS_CaseStudy dataset. The focus was on sales performance, customer value, regional trends, and shipping efficiency.

1. Most Frequently Sold Product Category
The category with the highest number of purchases was identified using a count of product categories.
Insight: The dominant product category (e.g., Office Supplies) had the highest order frequency, indicating steady customer demand and market share in this segment.
2. Top and Bottom Performing Regions by Sales
Top 3 Regions: These regions recorded the highest total sales over the four years.
Bottom 3 Regions: These contributed the least to revenue.
Insight: Sales were heavily concentrated in a few key regions (e.g., Nunavut, Ontario), suggesting potential for geographic sales expansion or localized marketing in underperforming regions.
3. Sales of Appliances in Ontario
The total sales of Appliances in the Ontario region were calculated.
Insight: This region shows moderate appliance demand, offering room for focused promotion or inventory expansion depending on current market penetration.
4. Bottom 10 Customers by Sales
The ten customers with the lowest cumulative sales were identified.
Insight: These customers could be targeted for upselling through tailored offers, onboarding campaigns, or customer service interventions to increase their lifetime value.
5. Shipping Method with the Highest Total Cost
Shipping costs were aggregated by shipping mode.
Insight: Express Air emerged as the most expensive shipping method. While it may offer faster delivery, its cost-effectiveness should be reassessed, especially for low-priority orders.
6. Most Valuable Customers & What They Buy
Customers with the highest total sales were extracted along with the products they typically purchase.
Insight: These high-value clients are important to retain. They often buy high-margin or frequently sold items, suggesting opportunities for bundling or loyalty incentives.
7. Top Small Business Customer
The highest-spending Small Business customer was identified.
Insight: This shows strong engagement from small business clients, warranting dedicated B2B offerings or relationship management.
8. Most Active Corporate Customer
The Corporate customer with the most orders placed between 2009–2012 was extracted.
Insight: Regular ordering indicates a stable B2B relationship. Consider special discounts or account-based marketing to maintain this loyalty.
9. Most Profitable Consumer
The Consumer segment’s most profitable customer was determined using total profit generated.
Insight: This customer could be studied for their purchasing habits and targeted with exclusive deals or referral programs.
10. Returned Orders and Segmentation
Joined with the Order_Status table to identify customers who returned items.
Insight: Returns came mostly from customers in a specific segment (e.g., Consumer or Small Business). This could point to issues with expectations, delivery delays, or product quality.
11. Are Shipping Costs Aligned with Order Priority?
Shipping cost and mode were analyzed in relation to Order Priority.
Insight: Some low-priority orders were shipped using costly methods like Express Air, which is inefficient. High-priority orders sometimes used slower shipping.
Recommendation: Enforce shipping policies that align delivery method with priority:
Express Air for "Critical"/"High"
Delivery Truck for "Low" or "Not Specified"

## Executive Summary
This report presents an analytical review of Kultra Mega Stores' historical order data (2009–2012) to guide regional strategy, revenue optimization, and logistics efficiency. It identifies sales trends, regional performance, customer segmentation, and cost leaks — particularly in shipping methods. Based on these insights, specific recommendations are made to improve profitability, reduce operational waste, and target high-potential customer segments.
