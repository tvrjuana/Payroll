CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `payments` AS
    SELECT 
        `emp`.`EmployeeID` AS `EmpID`,
        `emp`.`Fname` AS `Fname`,
        `emp`.`Lname` AS `Lname`,
        ((IFNULL(`sal`.`BaseSalary`, 0) + IFNULL(`sal`.`Bonus`, 0)) + IFNULL(`lea`.`leavePay`, 0)) AS `payments_Total`
    FROM
        ((`employee` `emp`
        LEFT JOIN `salary` `sal` ON ((`emp`.`EmployeeID` = `sal`.`EmpID`)))
        LEFT JOIN `leavep` `lea` ON ((`emp`.`EmployeeID` = `lea`.`Em_ID`)))
    GROUP BY `emp`.`EmployeeID` , `emp`.`Fname` , `emp`.`Lname`