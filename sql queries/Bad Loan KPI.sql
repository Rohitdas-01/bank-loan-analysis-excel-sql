-- Bad Loan KPI

select * from bank_loan_data;

SELECT
	(count(CASE when loan_status = 'Charged Off' THEN id END)* 100)/
	count(id) AS Bad_Loan_Percentage
From bank_loan_data   --Bad Loan Application Percentage

select count(id) AS Bad_Loan_Applications From bank_loan_data
where loan_status = 'Charged Off'; --Bad Loan Applications

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off' --Bad Loan Funded Amount

select sum(total_payment) AS Bad_Loan_Total_Received_Amount From bank_loan_data
WHERE loan_status = 'Charged Off' --Bad Loan Total Received Amount
