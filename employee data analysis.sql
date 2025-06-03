
--1.	Find the average income for each Education_Level for those who are employed full-time.

select education_level,avg(Income) as avg_income
from employees
where employment_status='Full-time'
group by education_level;

select * from employees;

--2.	Retrieve the top 5 highest earning individuals and their details.

select top 5 *
from employees
order by income desc;

--3.	Count how many people in each Occupation have more than 2 dependents and own a house.


select occupation,count(*) as noofpeople
from employees
where number_of_dependents>2 and homeownership_status='Own'
group by occupation;

--4.	List all individuals living in Urban locations with an income above the average income.

select *
from employees
where location='Urban'
	and income>(select avg(income) from employees)
order by income desc;


--5.	Identify how many males and females are in each Employment_Status.

select employment_status,gender,count(*) as noofemployees
from employees
group by employment_status,gender
order by employment_status;

--6.	What is the total and average income by Location and Occupation?

select location,occupation,
		sum(income) as totalincome,
		avg(income) as avgincome
from employees
group by location,occupation
order by 1,2

--7.	Find the average Household_Size grouped by Type_of_Housing.

select type_of_housing,
	avg(household_size) as avg_householdsize
from employees
group by type_of_housing;


--8.	Calculate the minimum, maximum, and average Work_Experience for each Marital_Status.

select marital_status,
	min(work_experience) as minworkexperience,
	max(work_experience) as maxworkexperience,
	avg(work_experience) as avgworkexperience
from employees
group by marital_status;


--9.	Write a query to rank individuals by Income within each Education_Level.

select *,rank() over(partition by education_level
						order by income desc) as ranks
from employees;


--10.	Find the top 3 Occupation types with the highest average income.

select top 3 occupation,avg(income) as avgincome
from employees
group by occupation
order by avg(income) desc;


--11.	Use a window function to calculate the cumulative income for each Gender.

select gender,income,
	sum(income) over(partition by gender
					order by income) as cumulative_income
from employees;


--12.	List the people whose income is above the median income for the dataset.


SELECT * 
FROM employees 
WHERE income > (
    SELECT  distinct PERCENTILE_CONT(0.5) 
    WITHIN GROUP (ORDER BY income) 
    OVER () AS MedianIncome
    FROM employees
);



