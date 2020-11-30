SELECT
	EMP.Fname,
    EMP.Lname,
    (IFNULL(SAL.BaseSalary,0) + IFNULL(SAL.Bonus,0) + IFNULL(LEA.leavePay,0)) as payments_Total
FROM payroll.employee AS EMP
	LEFT JOIN payroll.salary AS SAL
    ON emp.EmployeeID = sal.EmpID
    LEFT JOIN payroll.leavep AS LEA
    ON emp.EmployeeID = lea.Em_ID
GROUP BY emp.Fname, emp.Lname