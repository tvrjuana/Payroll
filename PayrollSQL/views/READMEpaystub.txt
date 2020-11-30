paystub_view

Contains attributes: EmployeeID, Fname, Lname, payments_Total, tax_deduction_total, benefits_deduction_total, paystub, Absences, Tardies
It calculates the derived attribute tax_deduction_total from table tax's attributes (StateTax and FederalTax).
tax_deduction_total = payments_Total * (StateTax + FederalTax)

It calculates the derived attribute benefits_deduction_total from table benefits' attributes (Retirement and Insurance)
benefits_deduction_total = Retirement + Insurance

It calculate the derived attribute paystub 
paystub = payments_Total - (tax_deduction_total + benefits_deduction_total)

It displays an employee's Absences and Tardies.