--Loan Purpose Breakdown 

select * from bank_loan_data;

select
	purpose,
	Count(id) AS Total_Loan_Applications,
	Sum(loan_amount) AS Total_Funded_Amount,
	Sum(total_payment) AS Total_Amount_Received
from bank_loan_data
GROUP BY purpose
ORDER BY Count(id)DESC