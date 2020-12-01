/* Functional Requirement 10 - Find which employees have greater than 3 absences and tardies. Order by company name and department name.*/

SELECT
	COM.Cname,
    DEPT.Dname,
    EMP.Fname,
    EMP.Lname,
    ATT.Absences,
    ATT.Tardies
FROM payroll.employee AS EMP
	LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
    LEFT JOIN payroll.department AS DEPT
    ON EMP.DID = DEPT.Department_ID
    LEFT JOIN payroll.attendance AS ATT
    ON EMP.EmployeeID = ATT.EmID
WHERE ATT.Absences > 3 AND ATT.Tardies > 3
ORDER BY
	COM.Cname,
    DEPT.Dname;