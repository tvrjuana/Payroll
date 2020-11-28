SELECT * FROM payroll.payout;

INSERT INTO payout(PaystubID, EID)
VALUES
	(101, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100001)),
    (102, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100002)),
    (103, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100003)),
    (104, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100004)),
    (105, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100005));

INSERT INTO payout(PaystubID, EID)
VALUES
	(201, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200001)),
    (202, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200002)),
    (203, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200003)),
    (204, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200004)),
    (205, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200005));

INSERT INTO payout(PaystubID, EID)
VALUES
	(501, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500001)),
    (502, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500002)),
    (503, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500003)),
    (504, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500004)),
    (505, (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500005));
