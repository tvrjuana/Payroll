/*Functional Requirement 7 - Find all salaries that are greater than 50000. Order by company name and department name*/

SELECT
	COM.Cname,
    DEPT.Dname,
	EMP.Fname,
    EMP.Lname,
    SAL.BaseSalary
FROM payroll.employee AS EMP
	LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
    LEFT JOIN payroll.department AS DEPT
    ON EMP.DID = DEPT.Department_ID
    LEFT JOIN payroll.salary AS SAL
    ON EMP.EmployeeID = SAL.EmpID
WHERE SAL.BaseSalary > 50000
ORDER BY 
	COM.Cname,
	DEPT.Dname;
    
    