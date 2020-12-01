/*Functional Requirement 6 - Find an employee’s deductions received with Deductions Dtotal and Employee EmployeeID. Display Tax deductions and Benefits deductions and Absences.*/

SELECT
	COM.Company_ID,
    EMP.Fname,
    EMP.Lname,
    PAY.tax_deduction_total,
    PAY.benefits_deduction_total,
    PAY.deductions_Total
FROM payroll.employee AS EMP
	LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
    LEFT JOIN(
		SELECT
			PAY.EmployeeID,
            PAY.tax_deduction_total,
            PAY.benefits_deduction_total,
            SUM(PAY.tax_deduction_total + PAY.benefits_deduction_total) AS deductions_Total
		FROM payroll.paystub AS PAY
        GROUP BY PAY.EmployeeID
    )AS PAY
    ON EMP.EmployeeID = PAY.EmployeeID
GROUP BY
	EMP.Fname,
    EMP.Lname
ORDER BY
	PAY.tax_deduction_total;
	
    