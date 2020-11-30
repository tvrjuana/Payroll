CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `payout_view` AS
    SELECT 
        `pay`.`PaystubID` AS `PaystubID`,
        `pay`.`EID` AS `EID`,
        `ptotal`.`payments_Total` AS `payments_Total`,
        `dtotal`.`deductions_Total` AS `deductions_Total`,
        `dtotal`.`paystub` AS `paystub`
    FROM
        ((`payout` `pay`
        LEFT JOIN `payments` `ptotal` ON ((`pay`.`EID` = `ptotal`.`EmpID`)))
        LEFT JOIN (SELECT 
            `dtotal`.`EmployeeID` AS `EmployeeID`,
                SUM((`dtotal`.`tax_deduction_total` + `dtotal`.`benefits_deduction_total`)) AS `deductions_Total`,
                `dtotal`.`paystub` AS `paystub`
        FROM
            `paystub` `dtotal`
        GROUP BY `dtotal`.`EmployeeID`) `dtotal` ON ((`pay`.`EID` = `dtotal`.`EmployeeID`)))
    GROUP BY `pay`.`PaystubID` , `pay`.`EID` , `ptotal`.`payments_Total` , `dtotal`.`deductions_Total` , `dtotal`.`paystub`
    ORDER BY `pay`.`PaystubID` , `pay`.`EID`