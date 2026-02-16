--Employee Length Analysis 

select * from bank_loan_data;

select
	emp_length,
	Count(id) AS Total_Loan_Applications,
	Sum(loan_amount) AS Total_Funded_Amount,
	Sum(total_payment) AS Total_Amount_Received
from bank_loan_data
GROUP BY emp_length
ORDER BY emp_length