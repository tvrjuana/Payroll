SELECT * FROM payroll.tax;

/*Company_ID 1 located in Atlanta*/
INSERT INTO tax(StateTax, FederalTax, Co_ID, E_ID, P_ID)
VALUES
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100001), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 101)),
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100002), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 102)),
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100003), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 103)),
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100004), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 104)),
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 100005), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 105));

/*Company_ID = 2 located in New York City*/
INSERT INTO tax(StateTax, FederalTax, Co_ID, E_ID, P_ID)
VALUES
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200001), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 201)),
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200002), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 202)),
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200003), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 203)),
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200004), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 204)),
	(0.04, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 200005), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 205));

/*Company_ID = 5 located in Seattle*/
INSERT INTO tax(StateTax, FederalTax, Co_ID, E_ID, P_ID)
VALUES
	(0.06, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500001), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 501)),
	(0.06, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500002), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 502)),
	(0.06, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500003), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 503)),
	(0.06, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500004), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 504)),
	(0.06, 0.10, (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5),(SELECT EmployeeID FROM payroll.employee WHERE EmployeeID = 500005), 
		(SELECT PaystubID FROM payroll.payout WHERE PaystubID = 505));