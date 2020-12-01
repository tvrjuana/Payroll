/*Functional Requirement 5 - Find an employee’s payments received with Payments Ptotal and Employee EmployeeID. Display the BaseSalary, Bonus, and LeavePay*/

SELECT
	COM.Company_ID,
	EMP.Fname,
    EMP.Lname,
    SAL.BaseSalary,
    SAL.Bonus,
    LEA.leavePay,
    (IFNULL(SAL.BaseSalary,0) + IFNULL(SAL.Bonus,0) + IFNULL(LEA.leavePay,0)) as payments_Total
FROM payroll.employee AS EMP
	LEFT JOIN payroll.salary AS SAL
    ON EMP.EmployeeID = SAL.EmpID
    LEFT JOIN payroll.leavep AS LEA
    ON EMP.EmployeeID = LEA.Em_ID
    LEFT JOIN payroll.company AS COM
    ON EMP.Company_ID = COM.Company_ID
GROUP BY 
	EMP.Fname, 
    EMP.Lname
ORDER BY 
	SAL.BaseSalary;