--Loan Term Analysis 

select * from bank_loan_data;

select
	term,
	Count(id) AS Total_Loan_Applications,
	Sum(loan_amount) AS Total_Funded_Amount,
	Sum(total_payment) AS Total_Amount_Received
from bank_loan_data
GROUP BY term
ORDER BY term