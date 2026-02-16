--Regional Analysis by State 

select * from bank_loan_data;

select
	address_state,
	Count(id) AS Total_Loan_Applications,
	Sum(loan_amount) AS Total_Funded_Amount,
	Sum(total_payment) AS Total_Amount_Received
from bank_loan_data
GROUP BY address_state
ORDER BY Sum(loan_amount)DESC
