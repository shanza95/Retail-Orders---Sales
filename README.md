  # Retail Orders Sales

## Project Overview:
This project focuses on analyzing the sales performance of Global Mart, a company that operates across multiple regions and offers a wide range of products with varying prices and discount structures. The main goal was to understand how the company is performing in terms of sales, discounts, shipping, and regional performance — and to help the business make smarter decisions using data.

## Project Objectives
- Understand total orders and revenue
- Measure the effect of discounts on sales
- Identify top-selling products and best-performing regions
- Analyze shipping preferences
- Find the most profitable product categories
- Support data-driven decision-making

## Insights 

  **Datasets**
- Kaggle Dataset Link: https://www.kaggle.com/datasets/ankitbansal06/retail-orders/data
- Raw Datasets (to be cleaned) can be found [here](Datasets//to%20be%20cleaned/)
- Cleaned Datasets can be found [here](Datasets//cleaned%20dataset/)
  
  **Data Cleaning & Analysis**
- You can explore the full Python implementation for the data cleaning phase in the [notebook](Python%20Section.ipynb/) , which includes step-by-step code and comments.
- DB Connection file can be found [here](Connection.ipynb/).
- The SQL queries utilized to inspect and perform queries can be found [here](retail.sql/)
- An interactive dashboard can be downloaded [here](https://public.tableau.com/views/RetailOrdersDashboard_17563205021290/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).
  
## Tools & Technologies

| Category               | Tools                            |
| ---------------------- | -------------------------------- |
| Programming & Cleaning | Python (Pandas, NumPy, Datetime) |
| Database Management    | MySQL               |
| Visualization          | Tableau                         |
| Data Storage           | CSV files                        |
| Version Control        | GitHub                     |


## Project Phases 

### Phase 1: Data Cleaning (Python) 

Key Steps:
- Generate a JSON format token connect public API to download the dataset.
- Unzip and Load CSV.
- Perform Cleaning (Categorical Attributes - Numerical Attributes)
- Feature Engineering
- Identified and corrected invalid timestamps using pd.to_datetime() and error coercion.
- Removed duplicate/ empty content entries from three datasets.
- Stored cleaned CSV's as user_viewing_data.csv, content_library.csv, and subscription_data.csv.
- Create a connection to DB.

  
### Phase 2: SQL Analysis

Key Steps
- Get the tot number of orders
  
![total orders](query%20results//total%20orders.png/)
      
- Get the total revenue (before discounts)
  
![total revenue (before discounts)](query%20results//tot%20revenue%20before%20discounts.png/)
           
- Get the total revenue (after discounts)
  
![total revenue (after discounts)](query%20results//tot%20revenue%20after%20discounts.png/)

- Get the top 5 selling products
  
![top 5 selling products](query%20results//top%205%20selling%20products.png/)


- Get the total sales by region
  
![total sales by region](query%20results//tot%20sales%20by%20region.png/)


- Find the most popular ship mode

![most popular ship mode](query%20results//most%20popular%20ship%20mode.png/)


- Get the average discount given per category
  
![average discount given per category](query%20results//avg%20discount%20per%20category.png/)


- Get the most profitable product categories
  
![most profitable product categories](query%20results//most%20profitable%20categories.png/)


### Phase 3: Retail Sales & Fulfillment Dashboard — Analytical Summary for stakeholder.

![Dashboard image](Dashboard%20image.png/)


This dashboard provides a comprehensive view of retail performance across sales, profitability, product categories, shipping behavior, and regional trends. It is designed to help stakeholders quickly identify growth drivers, operational bottlenecks, and opportunities for optimization.

Key Insights

   -   **Regional Performance:**
     
        The West and East regions lead in sales and profit, while the South shows steady year-over-year improvement.

  -   **Shipping Behavior:**

       -   Standard Class dominates order volume, indicating strong customer preference for cost-effective shipping.
       -   Second and First Class serve as a mid-tier options with moderate utilization.
       -   Same Day shipping has minimal adoption, suggesting either low demand or pricing constraints. 

  -   **Shipping Trends Over Time:** 

      Seasonal shipping trends show expected peaks around October-December, aligning with typical retail cycles.

  -    **Product Categories:**

        Technology provides the highest per-unit value despite low order counts, Furniture drives sizableshows strong revenue but requires careful discount management, Office Supplies contributes steady high-volume sales.

  -   **Top Products by Sales:** 

      Items like Tables, Binders, Phones, and Machines generate the highest overall revenue.

  -  **Profit vs. Quantity:** 

     The horizontal bar chart highlights notable contrasts between high-volume and high-profit items.
     Products like Chairs and Storage move large quantities, while certain Technology and Office Supply items deliver outsized profit per unit. This helps offering opportunities for targeted pricing or upselling.

  -    **Discount Impact:** 

        The discount analysis panel helps assess how markdowns influence product performance.
       Categories like Furniture and Office Supplies are more sensitive to discounting, while Technology remains stable with minimal discounting.


## Overall Takeaways

The business demonstrates healthy, distributed growth across regions and categories.
- Standard shipping remains the most preferred method by customers.
- Sales are a mix of high-volume items and high-profit tech products.
- Discount strategies should be evaluated carefully, specifically for Furniture and Office Supplies to protect profits.

This dashboard enables quick, data-driven decision-making across sales, fulfillment, and product strategy—and serves as a foundation for deeper KPI monitoring and forecasting.


