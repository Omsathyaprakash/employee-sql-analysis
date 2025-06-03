# employee-sql-analysis
## Overview
This project involved analyzing employee data using SQL to uncover insights into income distribution, education levels, employment status, housing trends, and occupational patterns. Key techniques included aggregation, filtering, ranking, and window functions to support data-driven decision-making.

## Project Structure

- **Database Setup**: Creation of the `soulvibe` database and the required tables.
- **Data Import**: Inserting sample data into the tables.
- **Business Problems**: Solving 20 specific business problems using SQL queries.

## Database Setup
```sql
CREATE DATABASE soulvibe;
```

## Data Import
creating a table with name employees and importing the table from the csv files 

## SQL Queries Solved
### 1.Find the average income for each Education_Level for those who are employed full-time.
```sql
select education_level,avg(Income) as avg_income
from employees
where employment_status='Full-time'
group by education_level;
```

