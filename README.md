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
<img src="https://github.com/user-attachments/assets/14b87eae-6d80-4e7e-a137-2b31be0b9bda" width="400" height="200">


### 2. Retrieve the top 5 highest earning individuals and their details.
``` sql
select top 5 *
from employees
order by income desc;
```

## OUTPUT/RESULT:
![image](https://github.com/user-attachments/assets/1157b38c-be00-45ad-ba63-2680876b7e02)



### 3. Count how many people in each Occupation have more than 2 dependents and own a house.
``` sql
select occupation,count(*) as noofpeople
from employees
where number_of_dependents>2 and homeownership_status='Own'
group by occupation;
```
## OUTPUT/RESULT:
<img src="https://github.com/user-attachments/assets/65670090-7a5e-43ca-b455-7a9f3633e5d2" width="400" height="200">


### 4. List all individuals living in Urban locations with an income above the average income.

```sql
select *
from employees
where location='Urban'
	and income>(select avg(income) from employees)
order by income desc;
```
## OUTPUT/RESULT:
<img src="https://github.com/user-attachments/assets/14b87eae-6d80-4e7e-a137-2b31be0b9bda" width="400" height="200">


### 5. Identify how many males and females are in each Employment_Status.

```SQL
select employment_status,gender,count(*) as noofemployees
from employees
group by employment_status,gender
order by employment_status;
```
## OUTPUT/RESULT:
<img src="https://github.com/user-attachments/assets/83edc868-8231-41e8-9f04-a39d02b1364a" width="400" height="200">


### 6. What is the total and average income by Location and Occupation?

```SQL
select location,occupation,
		sum(income) as totalincome,
		avg(income) as avgincome
from employees
group by location,occupation
order by 1,2
```
## OUTPUT/RESULT:
![image](https://github.com/user-attachments/assets/398634a7-ff91-4f35-8815-347651f2d756)

### 7. Find the average Household_Size grouped by Type_of_Housing.

```SQL
select type_of_housing,
	avg(household_size) as avg_householdsize
from employees
group by type_of_housing;
```
## OUTPUT/RESULT:
<img src="![image](https://github.com/user-attachments/assets/f369171a-849d-48fb-9a98-4bbe733b3338)

### 8. Calculate the minimum, maximum, and average Work_Experience for each Marital_Status.

```SQL
select marital_status,
	min(work_experience) as minworkexperience,
	max(work_experience) as maxworkexperience,
	avg(work_experience) as avgworkexperience
from employees
group by marital_status;
```
## OUTPUT/RESULT:
<img src="![image](https://github.com/user-attachments/assets/9738bfbd-a122-4cc3-a395-2ed77e61526b)
)
" width="400" height="200">





