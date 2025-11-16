# 📊 Sales Analytics SQL Portfolio Project

This project showcases a complete end-to-end SQL workflow.  
I designed a relational database, inserted sample data, and performed business-level analytics queries used in real sales dashboards.

---

## 🚀 Project Overview
This SQL project simulates a small retail store’s sales environment.  
It includes customers, products, and sales records.  
Using MySQL, I performed analytics such as:

- Total revenue  
- Best-selling products  
- Monthly revenue trends  
- Top customers by spending  
- Category-wise performance  

This project strengthens skills in joins, grouping, aggregation, and database design.

---

## 🛠️ Tools Used
- **MySQL**  
- **phpMyAdmin (XAMPP)**  
- **SQL (DDL + DML + Analytical Queries)**  

---

## 🗂️ Database Schema

### **Tables**
1. **customers**
2. **products**
3. **sales**

### **ERD (Entity-Relationship Diagram)**  
erDiagram
    CUSTOMERS {
        INT customer_id PK
        VARCHAR customer_name
        VARCHAR city
        VARCHAR country
    }
    PRODUCTS {
        INT product_id PK
        VARCHAR product_name
        VARCHAR category
        DECIMAL price
    }
    SALES {
        INT sale_id PK
        INT customer_id FK
        INT product_id FK
        INT quantity
        DATE sale_date
    }

    CUSTOMERS ||--o{ SALES : "places"
    PRODUCTS  ||--o{ SALES : "included in"

