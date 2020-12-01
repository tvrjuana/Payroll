SELECT * FROM payroll.salary;

INSERT INTO salary(BaseSalary, Bonus, EmpID, PID)
VALUES
	(50000, 5000, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 101));

INSERT INTO salary(BaseSalary, Bonus, EmpID, PID)
VALUES
	(40000, 4000, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 102)),
    (60000, 6000, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 103)),
    (55000, 5500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 104)),
    (70000, 7000, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 105));

/*Deleting duplicate EmpID*/
DELETE FROM salary WHERE PID = 104;
DELETE FROM salary WHERE PID = 105;

INSERT INTO salary(BaseSalary, Bonus, EmpID, PID)
VALUES
	(55000, 5500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 104)),
    (70000, 7000, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 105));

INSERT INTO salary(BaseSalary, Bonus, EmpID, PID)
VALUES
	(40000, 500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 201)),
	(70000, 1200, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 202)),
    (40000, 500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 203)),
    (65000, 900, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 204)),
    (40000, 0, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 205));

INSERT INTO salary(BaseSalary, Bonus, EmpID, PID)
VALUES
	(72000, 2000, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 501)),
	(13000, 3300, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 502)),
    (55000, 1000, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 503)),
    (55000, 1000, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 504)),
    (80000, 1500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 505));

UPDATE payroll.salary SET BaseSalary = 130000 WHERE EmpID = 500002;