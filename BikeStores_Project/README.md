# 🚴‍♂️ BikeStores Sales Analysis

An interactive Power BI dashboard for analyzing sales performance (2016–2018) across stores, brands, and products using SQL + Power BI.

## 📊 Objectives

- Analyze total sales by year and month.
- Identify top-performing stores and products.
- Understand brand and category sales distribution.
- Measure employee performance.
- Evaluate customer spending patterns and discount impact.

## 📄 Dataset

- **Source**: [BikeStores Sample Database – Kaggle](https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database)
- **Tables used**: `orders`, `order_items`, `products`, `stores`, `brands`, `categories`, `staffs`

## 🛠 Tools Used

- SQL Server (queries and data model).
- Power BI (visualizations).
- GitHub (version control and documentation).

## 🧾 SQL Queries

The SQL queries used to extract and prepare the data can be found here:
📂 [SQL/analysis_queries.sql](./SQL/analysis_queries.sql)

## 📈 Dashboard Preview

![Dashboard Screenshot](./screenshots/dashboard_overview.png)

## 🌐 View Live Dashboard

🔗 [Click here to view the Power BI dashboard](https://app.powerbi.com/links/TU-ENLACE-PUBLICO-AQUI)

## ✅ Business Questions & Insights

1. **Which year and month had the best sales?**
    - Sales peaked in April 2018 with over $800K in revenue, marking the highest-performing month in the dataset. 2017 showed strong performance overall, with steady monthly growth. However, a sharp decline in sales occurred post-April 2018, suggesting a significant drop in operations or data availability.
2. **Which stores and employees performed best?**
    - Baldwin Bikes outperforms all other stores, driven by high-performing employees Marcelene Boyer and Venita Daniel, each generating over $2.5M in sales. This indicates a strong team and possibly a more profitable location or customer base.
3. **Which brands and categories sell the most?**
    - Trek is the dominant brand:
        - It has the top 5 best-selling products overall.
        - Leads in Mountain Bikes, Electric Bikes, and Road Bikes.
    - Electra rules urban bikes:
        - Models like the Townie Original and Cruiser 1 are bestsellers in Comfort and Cruisers categories.
    - Electric bikes are booming:
        - Trek Conduit+ and Powerfly 8 FS drive high revenue, reflecting a global trend.
    - Surly’s niche in Cyclocross:
        - The Surly Straggler is the top-selling model in this category.
    - Opportunities:
        - Limited premium brand diversity: Trek dominates the market.
        - Underexplored categories: Children Bicycles have low sales compared to adult bikes.
4. **How do discounts impact revenue?**
    - Discounts had a moderate impact on overall revenue. While 2016 and 2017 show consistent discount levels with stable revenue, a significant discount peak in April 2018 coincided with the highest revenue of the entire dataset, suggesting that well-executed promotions can substantially boost sales. However, post-April 2018, both discounts and revenue declined, indicating the limited long-term effect of such campaigns.
5. **Who are the top customers and where are they located?**
    - Top customers are concentrated in New York State (e.g., Baldwinsville, Monroe, Amityville).
    - Top cities span multiple states (NY, CA, TX), with Baldwin, NY dominating total sales.
6. **What is the average order value over time?** 
    - The average order value increased steadily from 2016 to 2018, peaking at $2,354 in January 2018. The sharp spike in September 2018 ($2,988) may reflect fewer but larger transactions. Overall, this suggests customers were placing higher-value orders over time.
7. **How are sales distributed geographically?**
    - Sales are heavily concentrated in Baldwin, NY, which accounts for the majority of revenue. Santa Cruz, CA and Rowlett, TX follow at a much lower scale, indicating a strong regional imbalance in performance.