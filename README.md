# 🍽️ Restaurant Sales Analysis – SQL Project  
**Author:** Peace  
**Data Analysis Project using SQL**  


---

## 📌 Project Overview  
This SQL project explores restaurant order data to uncover insights around menu performance, customer spending patterns, and order behavior.  
By joining menu and order tables, the analysis identifies the most and least ordered items, top-spending customers, and category-level trends that can support menu optimization and strategic business decisions.

---

## 📚 Table of Contents  
1. [Project Overview](#-project-overview)  
2. [Data Sources](#-data-sources)  
3. [Tools Used](#-tools-used)  
4. [Objectives & Key Findings](#-objectives--key-findings)  
5. [Recommendations](#-recommendations)  
6. [Future Improvements](#-future-improvements)

---

## 🗂 Data Sources  
**1. `menu_items` table**  
Contains menu item names, categories, and pricing information.

**2. `order_details` table**  
Contains item-level order records, quantities, and order identifiers.

These two datasets were combined using an SQL `LEFT JOIN` on `item_id` to perform deeper analysis on spending and item popularity.

## 📂 Project Resources  

| Resource Type | File | Description |
|---------------|------|-------------|
| SQL Script | [`Restaurant Analysis.sql`](Restaurant%20Analysis.sql) | Full SQL workflow used to join tables, analyze item popularity, and evaluate high-spend orders. :contentReference[oaicite:0]{index=0} |
| Data Table | [`menu_items.csv`](menu_items.csv) | Contains all menu item information including item names, categories, and prices. |
| Data Table | [`order_details.csv`](order_details.csv) | Transaction-level order data including order IDs, item IDs, and item quantities. |


---

## 🛠 Tools Used  
- **SQL (MySQL)** – data exploration & analysis  
- **VS Code / MySQL Workbench** – query execution  
- **GitHub** – documentation & project version control  

---

## 🎯 Objectives & Key Findings  

### **1. Combine Menu & Order Data**  
A `LEFT JOIN` was used to merge the datasets, enabling complete insight into customer spending and item behavior.

---

### **2. Identify Least Ordered Items**  
Using `GROUP BY` and order counts, the least ordered items were identified.  
**Insight:** These items may need reevaluation—pricing, visibility, or recipe adjustments.

---

### **3. Identify Most Ordered Items & Categories**  
Counting item frequency revealed the most popular menu items and categories.  
**Insight:** High-performing categories indicate strong customer preference and can be leveraged for upsells and promotions.

---

### **4. Determine Top 5 Highest-Spend Orders**  
Ranking orders by total spend (`SUM(price)`) revealed the most valuable transactions.  
**Insight:** These orders provide clues into what drives high-value purchasing.

---

### **5. Analyze Highest-Spend Order (#440)**  
Order 440 contained a significant quantity of **Italian dishes**, which are among the highest-priced menu items.  
**Insight:** Premium-priced Italian meals contribute heavily to revenue.

---

### **6. Analyze Top 5 Highest-Spend Orders by Category**  
Breaking down categories for orders: 440, 2075, 1957, 330, and 2675 revealed:  
- Heavy purchase patterns in certain categories (e.g., Italian)  
- Cross-category orders where customers explore multiple menu segments  

**Insight:** Category-based bundles and targeted promotions could increase order value.

---

## 💡 Recommendations  

### **1. Promote Premium & High-Performing Categories**  
Since high-value customers purchased more premium items (like Italian dishes), the restaurant can:  
- Highlight these items on the menu  
- Offer premium bundle deals  
- Use them in marketing campaigns

---

### **2. Reevaluate Low-Performing Items**  
For items with low order counts:  
- Adjust price  
- Improve marketing or menu descriptions  
- Consider recipe changes or removal  
- Reduce inventory allocated to these items

---

### **3. Introduce Category-Based Bundles**  
Examples:  
- **Italian Night Bundle**  
- **Family Share Platters**  
- **Chef’s Favorites Combo**  

These bundles follow spending patterns seen in top orders.

---

### **4. Develop Retention Strategies for High-Spend Customers**  
Even without customer IDs, patterns suggest that high-spend customers could respond well to:  
- Loyalty rewards  
- Free add-ons for large orders  
- Targeted upsells on high-value items

---

### **5. Apply Menu Engineering Strategies**  
Use item demand and price data to:  
- Highlight high-margin, high-demand dishes  
- Reposition or reprice low-performing items  
- Improve profit per customer order

---

## 🚀 Future Improvements  

If provided with more data or time, this project could be expanded into:

### **1. Time-Series Sales Analysis**  
- Identify peak order days/times  
- Detect seasonal demand changes  
- Optimize staffing & inventory  

---

### **2. Customer-Level Behavior Analysis**  
If customer IDs become available:  
- Repeat purchase tracking  
- Customer lifetime value (CLV)  
- Personalized recommendation systems  

---

### **3. Profitability Analysis**  
Integrate cost-of-goods-sold (COGS):  
- Identify high-margin items  
- Optimize pricing strategy  
- Reduce low-profit menu clutter  

---

### **4. Restaurant Operations Insights**  
With additional fields like prep time or delivery data:  
- Optimize kitchen workflow  
- Predict high-volume periods  
- Improve delivery performance  

---

### **5. Build a Visualization Dashboard**  
Using **Power BI**, **Tableau**, or **Looker Studio** to create:  
- Revenue dashboards  
- Category performance graphs  
- Trend visualizations for management  

---

## 📎 Conclusion  
This SQL project provides a foundational understanding of how customers interact with a restaurant’s menu. Through item-level and category-level analysis, it uncovers insights that can guide menu optimization, strategic pricing, and targeted marketing.

More advanced analysis can further transform raw data into business intelligence that directly improves restaurant profitability and customer experience.

---

**Feel free to clone, fork, or build on this project!**  

