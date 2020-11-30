SELECT * FROM payroll.benefits;

INSERT INTO benefits(Retirement, Insurance, EmployID, Pay_ID)
VALUES
	(2000, 500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 101)),
    (1000, 400, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 102)),
    (2200, 600, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 103)),
    (3000, 500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 104)),
    (3500, 900, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 105));

INSERT INTO benefits(Retirement, Insurance, EmployID, Pay_ID)
VALUES
	(4000, 300, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 201)),
    (2000, 100, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 202)),
    (3000, 500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 203)),
    (7500, 350, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 204)),
    (1000, 0, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 205));

INSERT INTO benefits(Retirement, Insurance, EmployID, Pay_ID)
VALUES
	(1200, 0, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 501)),
    (2500, 600, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 502)),
    (5700, 450, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 503)),
    (3000, 300, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 504)),
    (2900, 500, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 505));