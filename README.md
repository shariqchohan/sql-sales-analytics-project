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
Customers (1) ---------< Sales >--------- (1) Products

Customers
 - customer_id (PK)
 - customer_name
 - city
 - country

Sales
 - sale_id (PK)
 - customer_id (FK)
 - product_id (FK)
 - quantity
 - sale_date

Products
 - product_id (PK)
 - product_name
 - category
 - price
