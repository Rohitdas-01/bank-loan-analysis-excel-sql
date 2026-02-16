-- Loan Status

select * from bank_loan_data;

SELECT 
		loan_status,
		count(id) as Total_Loan_Applications,
		sum(total_payment) as Total_Amount_Received,
		sum(loan_amount) as Total_Funded_Amount,
		AVG(int_rate * 100) AS Interest_rate,
		AVG(dti * 100) As DTI
From bank_loan_data
Group by loan_status
