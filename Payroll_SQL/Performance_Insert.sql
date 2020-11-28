/*Only contains values from Company_ID 1 - Companee and Company_ID 5 - PrimeFinancial*/
INSERT INTO performance(SpeedTests, Employee_ID)
VALUES
	('01:00:00', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100001));
    
INSERT INTO performance(SpeedTests, Employee_ID)
VALUES
	('00:58:40', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100001)),
    ('00:43:10', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100003));

INSERT INTO performance(SpeedTests, Employee_ID)
VALUES
	('00:45:30', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500002)),
    ('01:01:10', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500005)),
    ('01:06:10', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500004));
