# Q1 Show all the columns and rows in the table
select * from salaries;

#Q2 Show only the EmployeeName and Jobtitle columns
 select EmployeeName,JobTitle from salaries
# Q3  Show the number of employees in the table 
select count(*) from salaries;

#Q4 Show the unique job titles in the table
select distinct JobTitle from salaries;

# Q5 Show the job title and overtime pay for all employees with 
## overtime pay greater than 5000
select JobTitle,OvertimePay from salaries
where OvertimePay > 50000;

# Q6 Show the average base pay for all employees 
select Avg(BasePay) as "Avg Basepay" from salaries;

# Q7 Show the top 10 highest paid employees,
select EmployeeName, TotalPay from salaries
order by  TotalPay  desc
limit 10;

#Q8 Show the average of BasePay, OverTime Pay, and otherPay for each employee;
select EmployeeName, (BasePay+ OvertimePay+OtherPay)/3 as avg_of_bp_op_otherpay from salaries;

# Q9 Show all employees who have the word "Manager" in their job title
select EmployeeName,JobTitle from salaries 
where JobTitle like "%Manager%";

# Q10 SHow all employees  with a job title not equal to "Manager"
select EmployeeName,JobTitle from salaries
where JobTitle <> 'manager';



# Q11 Show all the Employees with a total pay between 50,0000 and 75,000
select * from salaries 
where TotalPay between 50000 and 750000;

# Q12 Show All employees with a base pay less then 50,000
# or a total pay greater than 100,000.
select * from salaries
where BasePay < 50000 or TotalPay > 100000;

#Q13 Show All employees with a total pay Benefits value 
-- between 125,000 and 150,000 and a job title containing the word "Director"
Select * from salaries
where TotalPayBenefits between 125000 and 150000
and JobTitle LIKE "%Director%";

#Q14 Show all employee ordered by their total pay benefits in desending orders
select * from salaries
order by TotalPayBenefits desc

#Q15 Show all Job titles with an average base pay of 
# at least 100,000 and order then by the average base pay in desending order
select JobTitle, avg(BasePay) as "avgbasepay" from salaries
group by JobTitle
having avg(BasePay) >=100000
order by avgbasepay desc

# Q16 Delete the Columns
select * from salaries;
alter table salaries
drop column Notes;
select * from salaries

# Q17 Delete all employees who have no overtimePay
select count(*) from salaries
where OvertimePay  = 0;
delete from salaries

