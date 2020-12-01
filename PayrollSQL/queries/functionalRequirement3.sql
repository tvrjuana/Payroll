/*Functional Requirement 3- Find the Speed Tests of an employee with an EmployeeID and Performance SpeedTests. Order by the fastest time and company ID. Display the name of the company as well.*/

SELECT
	PER.SpeedTests,
    COM.Company_ID,
    EMP.Fname,
    EMP.Lname,
    COM.Cname
FROM payroll.employee AS EMP
	LEFT JOIN payroll.performance AS PER
    ON EMP.EmployeeID = PER.Employee_ID
    LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
ORDER BY
	PER.SpeedTests,
    COM.Company_ID;