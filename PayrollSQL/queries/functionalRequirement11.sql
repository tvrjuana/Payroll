/*Functional Requirement 11 - Find out how much an employee’s payout goes to benefits with BenefitsID, Benefits Retirement, Benefits Insurance and EmployeeID. Order by Company name.*/

SELECT
	COM.Cname,
	EMP.Fname,
    EMP.Lname,
    PAY.payments_Total,
    BEN.benefits_deduction_total
FROM payroll.employee AS EMP
	LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
    LEFT JOIN payroll.payments AS PAY
    ON EMP.EmployeeID = PAY.EmpID
	LEFT JOIN (
		SELECT 
			BEN.EmployID,
			SUM(BEN.Retirement + BEN.Insurance) AS benefits_deduction_total
		FROM payroll.benefits AS BEN
		GROUP BY BEN.EmployID
    ) AS BEN
    ON EMP.EmployeeID = BEN.EmployID
GROUP BY
	EMP.Fname,
    EMP.Lname
ORDER BY 
	COM.Cname;