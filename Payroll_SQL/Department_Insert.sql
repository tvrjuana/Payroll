SELECT * FROM payroll.department;
INSERT INTO department(Dname, CID)
VALUES
	('App Development', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1)),
    ('Engineering', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1));

INSERT INTO department(Dname, CID)
VALUES
	('DevOps', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 1)),
    ('Information Security', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5)),
    ('Human Resources', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2)),
    ('Reception', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2)),
    ('Diversity/Inclusion', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5)),
    ('Accounting', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5)),
	('Marketing', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 5)),
    ('Management', (SELECT Company_ID FROM payroll.company WHERE Company_ID = 2));
    



