CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `paystub` AS
    SELECT 
        `emp`.`EmployeeID` AS `EmployeeID`,
        `emp`.`Fname` AS `Fname`,
        `emp`.`Lname` AS `Lname`,
        `tax`.`payments_Total` AS `payments_Total`,
        `tax`.`tax_deduction_total` AS `tax_deduction_total`,
        `ben`.`benefits_deduction_total` AS `benefits_deduction_total`,
        (`tax`.`payments_Total` - (`tax`.`tax_deduction_total` + `ben`.`benefits_deduction_total`)) AS `paystub`,
        `att`.`Absences` AS `Absences`,
        `att`.`Tardies` AS `Tardies`
    FROM
        (((`employee` `emp`
        LEFT JOIN (SELECT 
            `pay`.`EmpID` AS `EmpID`,
                `pay`.`payments_Total` AS `payments_Total`,
                (`pay`.`payments_Total` * SUM((`tax`.`StateTax` + `tax`.`FederalTax`))) AS `tax_deduction_total`
        FROM
            (`payments` `pay`
        LEFT JOIN `tax` ON ((`pay`.`EmpID` = `tax`.`E_ID`)))
        GROUP BY `pay`.`payments_Total` , `pay`.`EmpID`) `tax` ON ((`emp`.`EmployeeID` = `tax`.`EmpID`)))
        LEFT JOIN (SELECT 
            `ben`.`EmployID` AS `EmployID`,
                SUM((`ben`.`Retirement` + `ben`.`Insurance`)) AS `benefits_deduction_total`
        FROM
            `benefits` `ben`
        GROUP BY `ben`.`EmployID`) `ben` ON ((`emp`.`EmployeeID` = `ben`.`EmployID`)))
        LEFT JOIN `attendance` `att` ON ((`emp`.`EmployeeID` = `att`.`EmID`)))
    GROUP BY `emp`.`EmployeeID` , `emp`.`Fname` , `emp`.`Lname` , `tax`.`payments_Total` , `tax`.`tax_deduction_total` , `ben`.`benefits_deduction_total` , `att`.`Absences` , `att`.`Tardies`
    ORDER BY `emp`.`Fname` , `emp`.`Lname`