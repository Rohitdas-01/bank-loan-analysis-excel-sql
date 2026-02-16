--Monthly Trends by Issue Date 

select * from bank_loan_data;

select
	Month(issue_date) AS Month_Number,
	DATENAME(Month, issue_date) AS Month_Name,
	Count(id) AS Total_Loan_Applications,
	Sum(loan_amount) AS Total_Funded_Amount,
	Sum(total_payment) AS Total_Amount_Received
from bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)
