/*NOVAtime Report to determine what employees still need to be added.*/

--Employees in Payroll report, but not in Novatime report. 
SELECT * 
FROM Payroll 
LEFT OUTER JOIN Novatime ON Novatime.emp_num = Payroll.emp_num 
WHERE Novatime.emp_num IS NULL
ORDER BY Novatime.emp_num

--Employees in Payroll report, but not in NOVAtime report. 
SELECT * 
FROM Payroll 
WHERE emp_num NOT IN (SELECT emp_num FROM Novatime) 
ORDER BY Payroll.emp_num

--Employees in NOVAtime report, but not in Payroll report.  
SELECT * 
FROM Novatime
WHERE emp_num NOT IN (SELECT emp_num FROM Payroll) 
ORDER BY Novatime.emp_num

--Employees in both reports.
SELECT * 
FROM Novatime 
INNER JOIN Payroll ON payroll.emp_num = Novatime.emp_num 

--All Employees from Payroll Report
SELECT * 
FROM Payroll 

--All Employees from NOVAtime Report 
SELECT *
from Novatime 