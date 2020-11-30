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

/*Inserting values for all employee to see how it will affect the views*/
INSERT INTO leavep(leaveID, leavePay, fromDate, toDate, Em_ID, Ps_ID)
VALUES
	(10003, 10000, '2020-11-28', '2020-12-13', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 101)),
    (10004, 10000, '2020-09-25', '2020-10-10', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100003), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 103)),
    (10005, 10000, '2020-06-25', '2020-07-08', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 105));

INSERT INTO leavep(leaveID, leavePay, fromDate, toDate, Em_ID, Ps_ID)
VALUES
	(20003, 1000, '2020-02-19', '2020-03-01', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200001), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 201)),
    (20004, 2000, '2020-04-13', '2020-04-26', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 202)),
    (20005, 2000, '2020-10-16', '2020-10-28', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200005), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 205));

INSERT INTO leavep(leaveID, leavePay, fromDate, toDate, Em_ID, Ps_ID)
VALUES
	(50004, 1000, '2019-10-19', '2019-11-11', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500002), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 502)),
    (50005, 2000, '2018-07-13', '2020-07-25', (SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500004), (SELECT PaystubID FROM payroll.payout WHERE PaystubID = 504));

/*Updating values becuase toDate is not correct*/
UPDATE leavep SET toDATE = '2019-07-30' WHERE leaveID = 50001;
UPDATE leavep SET toDATE = '2018-05-31' WHERE leaveID = 50002;
UPDATE leavep SET toDATE = '2018-07-25' WHERE leaveID = 50005;