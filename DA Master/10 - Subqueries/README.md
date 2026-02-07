# 📊 Swiggy Dataset Analysis: Business Logic & Data Insights

## 📑 Project Overview
This project involves a deep dive into Swiggy's restaurant data to understand performance metrics, customer engagement, and revenue distribution across various Indian cities. Today's analysis focused on utilizing advanced logic to filter datasets dynamically and derive business intelligence from raw numbers.

---

## 💡 Key Metric Definition: "Revenue"
Since the dataset does not contain a direct "Revenue" column, a calculated metric was established to estimate financial performance:
* **Revenue Logic:** The product of the total number of ratings (`rating_count`) and the average cost for two (`cost`).
* **Purpose:** This allows for a weighted comparison of restaurants rather than just looking at price points or popularity in isolation.

---

## 🎯 Analysis Methodology & Logic

### 1. Identifying Low-Engagement Outlets (Abohar)
The analysis began by isolating a specific geographic market (Abohar) to find the restaurant with the least customer footfall.
* **Logic:** We first identified the lowest rating count within that specific city and then identified the restaurant associated with that exact number.

### 2. National Revenue Leadership
To find the highest-earning restaurant in all of India, the analysis shifted from simple filtering to global calculations.
* **Logic:** Every restaurant's revenue was calculated, and only the record matching the absolute maximum value was retrieved.

### 3. Benchmarking Against the Average
A performance audit was conducted to see how many restaurants exceeded the platform's average standards.
* **Logic:** A dynamic average rating was calculated for the entire dataset. Any restaurant with a rating equal to or higher than this "benchmark" was counted to assess overall platform quality.

### 4. Regional Deep-Dive: Delhi Performance
The analysis focused on the Delhi market to identify top-tier performers using two specific criteria:
* **Revenue Dominance:** Finding the restaurant that holds the record for the highest revenue within Delhi city limits.
* **High-Value Premium Outlets:** Identifying restaurants that are not only top revenue earners but also have a "cost for two" that is higher than the average cost across all Delhi restaurants.

### 5. Geographic Market Share
Finally, the analysis ranked cities based on the total volume of customer interactions.
* **Logic:** By summing up the rating counts for every restaurant within a city, we identified the top 5 most active markets on the platform.

---

## 📋 Assignment Objectives (In Progress)
The second phase of the analysis involves answering broader organizational questions:
* **Chain Analysis:** Identifying which restaurant brands have the largest physical footprint and the highest cumulative revenue.
* **Cuisine Economics:** Ranking the 10 most and 10 least expensive cuisines based on average cost.
* **Popularity Trends:** Locating the specific city where "Biryani" stands out as the most popular cuisine choice.
* **Unique Branding:** Filtering for unique restaurant names that are generating the most revenue.

---

## 🛠️ Technical Competencies Demonstrated
* **Multi-Level Filtering:** Applying criteria that depend on city-specific averages and global maximums.
* **Dynamic Thresholding:** Using calculations (like averages) as filters rather than using static hard-coded numbers.
* **Data Aggregation:** Summarizing thousands of rows into high-level city and cuisine insights.

---
**Next Step:** Would you like me to summarize the logic for the remaining 12 assignment questions to help you prepare your next analysis?




### Excel
- Interface
- Arithmetic (SUM, MIN, MAX, etc)
- Text Cleaning Fns
- Data Cleaning
- Filter
- LookUPs
- Pivot Tables
- Pivot Charts
- Slicers
- Dashboard

### SQL
- Databases vs Datasets vs Data
- Features of DB
- DDL vs DML vs TCL vs DQL vs DCL
- Select with Multiple columns
- Where with AND OR NOT IN BETWEEN
- Arithmetic operations
- ORDER BY with LIMIT AND OFFSET
- JOINs
- Group BY
- Subqueries


Jobs in the ERA of AI
LinkedIN
