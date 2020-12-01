/*Functional Requirement 9 - Find how much an employee’s payout goes to taxes with Tax StateTax, FederalTax and Employee EmployeeID. Order by Company name*/

SELECT 
	COM.Cname,
    EMP.Fname,
    EMP.Lname,
    TAX.payments_Total,
    TAX.tax_deduction_total
FROM payroll.employee AS EMP
	LEFT JOIN (
		SELECT
			PAY.EmpID,
            PAY.payments_Total,
			(PAY.payments_Total * SUM(TAX.StateTax + TAX.FederalTax)) AS tax_deduction_total
		FROM payroll.payments AS PAY
			LEFT JOIN payroll.tax as TAX
			ON PAY.EmpID = TAX.E_ID
		GROUP BY
			PAY.payments_Total,
			PAY.EmpID
	) AS TAX
    ON EMP.EmployeeID = TAX.EmpID
    LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
GROUP BY
	EMP.Fname,
    EMP.Lname
ORDER BY
	COM.Cname;