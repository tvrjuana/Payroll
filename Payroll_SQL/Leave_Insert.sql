SELECT * FROM payroll.leavep;

INSERT INTO leavep(leaveID, leavePay, fromDate, toDate, Em_ID, Ps_ID)
VALUES
	(10001, 10000, '2020-11-25', '2020-12-01', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 102)),
    (10002, 10000, '2020-10-25', '2020-11-01', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 104));

INSERT INTO leavep(leaveID, leavePay, fromDate, toDate, Em_ID, Ps_ID)
VALUES
	(20001, 1000, '2020-08-19', '2020-09-01', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 203)),
    (20002, 2000, '2020-01-13', '2020-01-26', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 204));

INSERT INTO leavep(leaveID, leavePay, fromDate, toDate, Em_ID, Ps_ID)
VALUES
	(50001, 1000, '2019-07-19', '2020-07-30', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 501)),
    (50002, 2000, '2018-05-13', '2020-05-31', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 503)),
    (50003, 2000, '2020-12-13', '2020-12-27', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 505));