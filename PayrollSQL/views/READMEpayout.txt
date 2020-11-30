payout_view

It contains the attributes PaystubID, EID, payments_Total, deductions_Total, and paystub.

PaystubID and EID comes from table payout.
payments_Total comes from view payments.

deductions_Total is a derived attribute from view paystub's attributes (tax_deduction_total and benefits_deduction_total).
deductions_Total = tax_deduction_total + benefits_deduction_total

paystub comes from view paystub.