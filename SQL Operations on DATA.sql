select * from bank_loan;

select count(id) as total_loan_application from bank_loan;

select count(id) as MTD_loan_application from bank_loan WHERE EXTRACT(MONTH FROM issue_date) = 12 AND EXTRACT(YEAR FROM issue_date) = 2021;

select sum(loan_amount) as total_funded_amount from bank_loan; --where extract(month from issue_date) = 2 and extract(year from issue_date) =2021;

select sum(total_payment) as total_amount from bank_loan; --where extract(month from issue_date) = 2 and extract(year from issue_date) =2021;

select avg(int_rate) as average_interest_rate from bank_loan; --where extract(month from issue_date) = 2 and extract(year from issue_date) =2021;

select round(avg(dti),4)*100 as average_debt_to_income from bank_loan; --where extract(month from issue_date) = 2 and extract(year from issue_date) =2021;

Select count(loan_status) as bad_loan_count from bank_loan where loan_status = 'Charged Off';
select count(loan_status) as good_loan_count from bank_loan where loan_status = 'Fully Paid' or loan_status = 'Current';

select (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*1.0)/(count(id))*100 as good_loan_percentage from bank_loan;
select (count(case when loan_status = 'Charged Off' then id end)*1.0)/(count(id))*100 as bad_loan_percentage from bank_loan;

select sum(loan_amount) as total_good_loan_given from bank_loan where loan_status = 'Fully Paid' or loan_status = 'Current';
select sum(loan_amount) as total_bad_loan_given from bank_loan where loan_status = 'Charged Off';

select sum(total_payment) as total_good_amount_recieved from bank_loan where loan_status = 'Fully Paid' or loan_status = 'Current';
select sum(total_payment) as total_bad_amount_recieved from bank_loan where loan_status = 'Charged Off';




select 
	loan_status,
	count(id) as LoanCount,
	sum(total_payment) as Amount_Recieved,
	sum(loan_amount) as Funded_Amount,
	avg(int_rate) as Avg_interest_rate,
	round(avg(dti),4)*100 as Avg_dti_percentage
	
	from bank_loan

	group by loan_status;



select 
	EXTRACT(MONTH FROM issue_date) as Month_name,
	count(id) as LoanCount,
	sum(total_payment) as Amount_Recieved,
	sum(loan_amount) as Funded_Amount,
	avg(int_rate) as Avg_interest_rate,
	round(avg(dti),4)*100 as Avg_dti_percentage
	
	from bank_loan

	group by (EXTRACT(MONTH FROM issue_date))
	Order by (EXTRACT(MONTH FROM issue_date));


select 
	address_state,
	count(id) as LoanCount,
	sum(total_payment) as Amount_Recieved,
	sum(loan_amount) as Funded_Amount,
	avg(int_rate) as Avg_interest_rate,
	round(avg(dti),4)*100 as Avg_dti_percentage
	
	from bank_loan

	group by address_state
	Order by address_state;


	








