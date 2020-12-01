/*Functional Requirement 4 - Find an employee’s payout with Employee EmployeeID, Payout PaystubID, and Payout Paystub. Display the first name and last name of the employee and the Company’s name.*/

SELECT 
	PAY.PaystubID,
    COM.Cname,
    EMP.Fname,
    EMP.Lname,
    PTUB.paystub
FROM payroll.employee AS EMP
	LEFT JOIN payroll.payout AS PAY
    ON EMP.EmployeeID = PAY.EID
    LEFT JOIN payroll.paystub AS PTUB
    ON EMP.EmployeeID = PTUB.EmployeeID
    LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
ORDER BY
	PAY.PaystubID
	