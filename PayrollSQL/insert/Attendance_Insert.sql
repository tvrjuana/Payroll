SELECT * FROM payroll.attendance;

INSERT INTO attendance(Absences, Tardies, EmID, PaID)
VALUES
	(0, 5, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 101)),
    (3, 1, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 102)),
    (4, 2, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 103)),
    (2, 8, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 104)),
    (6, 5, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 105));

INSERT INTO attendance(Absences, Tardies, EmID, PaID)
VALUES
	(4, 3, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 201)),
    (2, 1, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 202)),
    (3, 5, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 203)),
    (7, 3, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 204)),
    (1, 4, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 205));

INSERT INTO attendance(Absences, Tardies, EmID, PaID)
VALUES
	(1, 0, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 501)),
    (1, 6, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 502)),
    (5, 4, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 503)),
    (3, 3, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 504)),
    (2, 4, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 505));
    