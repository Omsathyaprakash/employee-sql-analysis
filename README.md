# employee-sql-analysis
## Overview
This project involved analyzing employee data using SQL to uncover insights into income distribution, education levels, employment status, housing trends, and occupational patterns. Key techniques included aggregation, filtering, ranking, and window functions to support data-driven decision-making.

Project structure
Database Setup: Creation of the soulvibe database.
Importing data: Importing sample csv file into tables.
Business Problems: Solving 12 specific business problems using SQL queries.

## Database Setup
```sql
CREATE DATABASE soulvibe;
```
## Data Import

## SQL Queries Solved
### 1.Find the average income for each Education_Level for those who are employed full-time.
```sql
select education_level,avg(Income) as avg_income
from employees
where employment_status='Full-time'
group by education_level;
```
## OUTPUT/RESULT:

<img ![image](https://github.com/user-attachments/assets/7eeccb42-557d-478f-9de7-fc2918512fef) />
