/*Functional Requirement 2 - Find the name of the Department an Employee is a part of with EmployeeID and Department Dname. Display the name of the Company they work for as well*/

SELECT
	EMP.EmployeeID,
    EMP.Fname,
    EMP.Lname,
    DEPT.Dname,
    COM.Cname
FROM payroll.employee AS EMP
	LEFT JOIN payroll.department AS DEPT
    ON EMP.DID = DEPT.Department_ID
    LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
ORDER BY
	EMP.Fname,
    EMP.Lname;
	