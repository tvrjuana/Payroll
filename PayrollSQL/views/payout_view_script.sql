SELECT 
	PaystubID,
    EID,
	PTOTAL.payments_Total,
    DTOTAL.deductions_Total,
	DTOTAL.paystub
FROM payroll.payout AS PAY
	LEFT JOIN payroll.payments AS PTOTAL
    ON PAY.EID = PTOTAL.EmpID
    LEFT JOIN(
		SELECT
			DTOTAL.EmployeeID,
            SUM(DTOTAL.tax_deduction_total + DTOTAL.benefits_deduction_total) AS deductions_Total,
            DTOTAL.paystub
		FROM payroll.paystub AS DTOTAL
        GROUP BY DTOTAL.EmployeeID
	)AS DTOTAL
    ON PAY.EID = DTOTAL.EmployeeID
GROUP BY 
	PAY.PaystubID, 
	PAY.EID,
	PTOTAL.payments_Total,
	DTOTAL.deductions_Total,
	DTOTAL.paystub
ORDER BY
	PAY.PaystubID, 
	PAY.EID;
