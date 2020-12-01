/*Functional Requirement 8 - Find all the employees that had a leave fromDate and toDate in 2020. Order by Company name*/

SELECT
	COM.Cname,
	EMP.Fname,
    EMP.Lname,
    LEA.fromDate, 
    LEA.toDate
FROM payroll.employee AS EMP
	LEFT JOIN payroll.leaveP AS LEA
	ON EMP.EmployeeID = LEA.Em_ID
    LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
WHERE YEAR(LEA.fromDate) = 2020 AND YEAR(LEA.toDate) = 2020
ORDER BY
	COM.Cname