SELECT
	EMP.EmployeeID,
    EMP.Fname,
    EMP.Lname,
    TAX.payments_Total,
    TAX.tax_deduction_total,
    BEN.benefits_deduction_total,
    (TAX.payments_Total - (TAX.tax_deduction_total + BEN.benefits_deduction_total)) AS paystub,
    ATT.Absences,
    ATT.Tardies
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
    LEFT JOIN (
		SELECT 
			BEN.EmployID,
			SUM(BEN.Retirement + BEN.Insurance) AS benefits_deduction_total
		FROM payroll.benefits AS BEN
		GROUP BY BEN.EmployID
    ) AS BEN
    ON EMP.EmployeeID = BEN.EmployID
    LEFT JOIN payroll.attendance AS ATT
    ON EMP.EmployeeID = ATT.EmID
GROUP BY
	EMP.EmployeeID,
    EMP.Fname,
    EMP.Lname,
    TAX.payments_Total,
    TAX.tax_deduction_total,
    BEN.benefits_deduction_total,
    ATT.Absences,
    ATT.Tardies
ORDER BY 
	EMP.Fname, 
    EMP.Lname;

    