# 📊 Task 4: SQL for Data Analysis

## 🎯 Objective
Use SQL queries to extract and analyze insights from a relational eCommerce database.

---

## 🧰 Tools & Technologies
- **Database**: MySQL 8.0  
- **Language**: SQL  
- **Tables**: `customers`, `products`, `orders`, `order_items`  
- **Interface**: MySQL CLI | MySQL Shell | MySQL Workbench

---

## 📁 Project Structure
```
task3-sql-analysis/
│
├── task3_queries.sql        # All SQL queries (a–f)
├── screenshots/             # Screenshots of query results
└── README.md                # This file
```

---

## 🧠 Skills Demonstrated

| Part | SQL Skill                             | Example Insight                           |
|------|---------------------------------------|-------------------------------------------|
| a    | SELECT · WHERE · ORDER BY · GROUP BY  | Products per category                     |
| b    | INNER JOIN                            | Orders with customer names                |
| c    | LEFT JOIN                             | Products with ordered quantities          |
| d    | Subqueries                            | Customers with high-value orders          |
| e    | Aggregates (SUM, AVG)                 | Average order value, total revenue        |
| f    | Views & Indexing                      | `top_customers` view + indexed FK column  |

---

## 🔍 Sample Output Preview

```sql
-- View top-spending customers
SELECT * FROM top_customers LIMIT 5;
```

| customer_id | total_spent |
|-------------|-------------|
| 4           | 155998      |
| 1           | 124999      |
| 7           | 102980      |

---

## ✍️ Author  
**Bhavesh Tupe** – Data Analysis Intern  
📍 India

---

## 🏁 Outcome  
By completing this task I practiced:

- Writing production-grade SQL queries  
- Joining, grouping, and filtering relational data  
- Creating reusable views and performance indexes  
- Deriving business insights from eCommerce transactions
