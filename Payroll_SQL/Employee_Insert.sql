SELECT * FROM payroll.employee;
INSERT INTO employee(EmployeeID, Fname, Minit, Lname, Company_ID, DID)
VALUES
	(10001, 'Hanson', 'A', 'Deck', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 1));

INSERT INTO employee(EmployeeID, Fname, Minit, Lname, Company_ID, DID)
VALUES
	(10002, 'Lisa', 'B', 'Newcar', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 2)),
    (10003, 'Kim', 'C', 'Boucha', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 2)),
    (10004, 'Victor', 'D', 'Eeyus', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 2)),
    (10005, 'Jason', 'E', 'Response', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 3));

INSERT INTO employee(EmployeeID, Fname, Minit, Lname, Company_ID, DID)
VALUES
	(20001, 'John', 'B', 'Smith', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 5)),
    (20002, 'Jane', '', 'Thompson', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 10)),
    (20003, 'April', '', 'Ludgate', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 6)),
    (20004, 'John', 'D', 'Apple', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 10)),
    (20005, 'Jesse', 'V', 'Gonzalez', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 5));

INSERT INTO employee(EmployeeID, Fname, Minit, Lname, Company_ID, DID)
VALUES
	(50001, 'Daniel', '', 'Miller', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 9)),
    (50002, 'Junie', 'B', 'Jones', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 9)),
    (50003, 'Arya', '', 'Stark', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 7)),
    (50004, 'Scooby', '', 'Doo', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 7)),
    (50005, 'Alice', 'J', 'Wonder', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5), (SELECT Department_ID FROM payroll.department WHERE Department_ID = 4));

/*Updating rows because I put 5 digits instead of 6*/
UPDATE payroll.employee SET EmployeeID=100001 WHERE EmployeeID = 10001;
UPDATE payroll.employee SET EmployeeID=100002 WHERE EmployeeID = 10002;
UPDATE payroll.employee SET EmployeeID=100003 WHERE EmployeeID = 10003;
UPDATE payroll.employee SET EmployeeID=100004 WHERE EmployeeID = 10004;
UPDATE payroll.employee SET EmployeeID=100005 WHERE EmployeeID = 10005;

UPDATE payroll.employee SET EmployeeID=200001 WHERE EmployeeID = 20001;
UPDATE payroll.employee SET EmployeeID=200002 WHERE EmployeeID = 20002;
UPDATE payroll.employee SET EmployeeID=200003 WHERE EmployeeID = 20003;
UPDATE payroll.employee SET EmployeeID=200004 WHERE EmployeeID = 20004;
UPDATE payroll.employee SET EmployeeID=200005 WHERE EmployeeID = 20005;

UPDATE payroll.employee SET EmployeeID=500001 WHERE EmployeeID = 50001;
UPDATE payroll.employee SET EmployeeID=500002 WHERE EmployeeID = 50002;
UPDATE payroll.employee SET EmployeeID=500003 WHERE EmployeeID = 50003;
UPDATE payroll.employee SET EmployeeID=500004 WHERE EmployeeID = 50004;
UPDATE payroll.employee SET EmployeeID=500005 WHERE EmployeeID = 50005;

