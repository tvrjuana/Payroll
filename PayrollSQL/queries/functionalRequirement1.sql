/*Functional Requirement 1 - Find the name of the Company an employee works for with Employee EmployeeID, Employee CID, and Company Cname*/

SELECT 
	EMP.Company_ID,
    EMP.Fname,
    EMP.Lname,
    COM.Cname,
    COM.Location
FROM payroll.employee AS EMP
	LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID =  COM.Company_ID
ORDER BY
	EMP.Company_ID,
    EMP.Lname;
	