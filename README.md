# Chinook SQL Analysis 🎵

This project analyzes the **Chinook music store database** using SQL.
The goal is to extract meaningful business insights related to customers,
sales performance, music genres, artists, and geographic trends.

The Chinook database is a **real-world relational dataset** commonly used
to demonstrate advanced SQL querying skills.

---

## 📊 Business Objective

The analysis answers key business questions such as:
- Which countries and cities generate the most revenue
- Who are the highest-value customers
- Which genres, artists, and albums perform best
- How customer spending is distributed across artists and regions

These insights help in understanding customer behavior,
sales concentration, and content performance.

---

## 🗂 Dataset Overview

The Chinook database consists of multiple related tables.  
Key tables used in this project include:

### `customer`
Customer demographic and contact information.

### `invoice`
Billing and purchase summary data.

### `invoiceline`
Line-level purchase details for each invoice.

### `track`
Information about individual tracks.

### `album`
Album details linked to artists.

### `artist`
Artist information.

### `genre`
Music genre classification.

### `employee`
Employee and reporting hierarchy data.

---

## 🛠 Tools & Skills Used

- **MySQL**
- **MySQL Workbench**
- SQL Concepts:
  - Multi-table JOINs
  - GROUP BY & aggregate functions
  - Subqueries
  - Filtering and sorting
  - DISTINCT and ranking logic
  - Business-oriented query design

---

## 📁 Project Structure


---

## 📌 Questions Answered

1. Senior-most employee in the organization  
2. Country with the highest number of invoices  
3. Top 3 countries by invoice count  
4. City generating the highest total revenue  
5. Best customer based on total spending  
6. Customers who purchased Rock music  
7. Top 10 Rock albums by number of tracks  
8. Tracks longer than the average track length  
9. Amount spent by each customer on each artist  
10. Most popular music genre by country  

All queries are clearly labeled and documented in `chinook_queries.sql`.

---

---

## 📊 Sample Outputs

Below are example outputs from selected queries to demonstrate the type of insights
generated from the Chinook database using SQL.

---

### Top Countries by Invoice Count

| BillingCountry | total_invoice |
|----------------|---------------|
| USA            | 131           |
| Canada         | 76            |
| Brazil         | 61            |

---

### Best Customer by Total Spending

| customerid | firstname | lastname | total |
|------------|----------|----------|-------|
| 5          | Rasmus   | Nielsen  | 144.54 |

---

### Top 10 Rock Albums by Track Count

| artist              | album_title                | track_count |
|---------------------|----------------------------|-------------|
| Led Zeppelin        | IV                         | 8           |
| Deep Purple         | Machine Head               | 7           |
| AC/DC               | Back in Black              | 6           |

---

### Most Popular Genre by Country (Example)

| billingcountry | genre_name | total |
|----------------|------------|-------|
| USA            | Rock       | 523.86 |
| Brazil         | Latin      | 314.45 |

---

These outputs illustrate revenue concentration by geography,
high-value customers, and genre-level sales performance across regions.


## 🔍 Key Insights

- Revenue is concentrated in a small number of countries and cities  
- Rock is one of the most purchased genres  
- A few high-value customers contribute significantly to total sales  
- Certain artists dominate customer spending patterns  

These insights can support marketing, catalog optimization,
and customer retention strategies.

---

## 🚀 How to Run This Project

1. Load the **Chinook database** into MySQL
2. Open **MySQL Workbench**
3. Run queries from `chinook_queries.sql`
4. Analyze results for each business question

---

## 📈 What This Project Demonstrates

- Ability to work with a complex, real-world database
- Strong understanding of relational data models
- Confidence with advanced JOIN logic
- SQL skills applicable to real business analytics roles

---

## 👤 Author

**Ronit Bhatia**  
Aspiring Data Analyst | SQL | Data Analysis

