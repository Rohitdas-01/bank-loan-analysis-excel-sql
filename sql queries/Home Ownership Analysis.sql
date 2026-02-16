--Home Ownership Analysis 

select * from bank_loan_data;

select
	home_ownership,
	Count(id) AS Total_Loan_Applications,
	Sum(loan_amount) AS Total_Funded_Amount,
	Sum(total_payment) AS Total_Amount_Received
from bank_loan_data
GROUP BY home_ownership
ORDER BY Count(id)DESC