-- Good Loan KPI
select * from bank_loan_data

SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data; --Good Loan Application Percentage

select count(id) AS Good_Loan_Applications From bank_loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current';  --Good Loan Applications

select sum(loan_amount) AS Good_Loan_Funded_Amount From bank_loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current';  --Good Loan Funded Amount

select sum(total_payment) AS Good_Loan_Total_Received_Amount From bank_loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current';  --Good Loan Total Received Amount


















