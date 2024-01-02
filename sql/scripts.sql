/*create and use a new database called EmployeeExpense - Start*/
create database EmployeeExpense1;
use EmployeeExpense1;
/*create and use a new database called EmployeeExpense - End*/
/*create all the entities and attributes as per the ERD - Start*/
drop table DEPARTMENT;
create table DEPARTMENT(
DeptName varchar(20) primary key, 
HEAD VARCHAR(25),
DEPTSIZE INT );

drop table EMPLOYEE;
create table EMPLOYEE(
EMPLID VARCHAR(25) primary key, 
EmpFirstName varchar(20),
 EmpMiddleName varchar(20), 
 EmpLastName varchar(20),
 BankAccountNo varchar(20), 
 Location varchar(20),
 Phone_No Int,
 DeptName varchar(20) not null,
 SupervisorID VARCHAR(25),
 FOREIGN KEY (DeptName) REFERENCES DEPARTMENT(DeptName),
 FOREIGN KEY (SupervisorID) REFERENCES EMPLOYEE(EMPLID));
 
 drop table AUDITOR;
 create table AUDITOR(
 AuditorID VARCHAR(25) primary key,
 AuditorName varchar(20));
 
 DROP TABLE REIMBURSEMENT;
 create table REIMBURSEMENT(
 ReimbursementID VARCHAR(10) primary key,
 ReimbursementDept varchar(20),
 ReimbursementDate Date,
 ReimbursementStatus varchar(10),
 ReimbursementAmount float(10,2),
 ReasonofRejection varchar(50),
 AuditorID VARCHAR(25) not null,
 FOREIGN KEY (AuditorID) REFERENCES AUDITOR(AuditorID));
 
  DROP TABLE EXPENSETYPE;
  create table EXPENSETYPE(
  ExpTypeID VARCHAR(10) primary key, 
  ExpTypeName Varchar(25),
  Lmt Int);
  
DROP TABLE Expense;
  create table Expense(
  ExpID VARCHAR(10) primary key, 
  ReimbursementID VARCHAR(10),
  EMPLID VARCHAR(25) not null,
  ExpDate Date,
  SubmitDate Date,
  ExpAmt float(10,2),
  ExpDesc varchar(50),
  ExpStatus varchar(10),
  ExpTypeID VARCHAR(10) not null,
  SupervisorID VARCHAR(25) not null,
  SupervisorComment VARCHAR(50),
  AuditorID VARCHAR(25),
  FOREIGN KEY (ReimbursementID) REFERENCES REIMBURSEMENT(ReimbursementID) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (AuditorID) REFERENCES AUDITOR(AuditorID),
  FOREIGN KEY (ExpTypeID) REFERENCES EXPENSETYPE(ExpTypeID));

  
 /*POPULATE DEPARTMENT TABLE*/
insert into DEPARTMENT VALUES('RADIOLOGY','Deindorfer,James',197);
insert into DEPARTMENT VALUES('NEUROLOGY','Dobbs,Susan',122);
insert into DEPARTMENT VALUES('TECHNOLOGY','Schofield,Barbara',108);
insert into DEPARTMENT VALUES('HR','Brown III,Anne',107);
insert into DEPARTMENT VALUES('OPTOMOLOGY','Ng,Frances',172);
insert into DEPARTMENT VALUES('PROCUREMENT','Lee,Susan',71);
insert into DEPARTMENT VALUES('FINANCE','Collins,Mike',119);
insert into DEPARTMENT VALUES('OTHER','Martignoni,David',161);
insert into DEPARTMENT VALUES('GENERAL','Ball,Nancy',189);
insert into DEPARTMENT VALUES('ADMIN','Emmerson,Nancy',52);
insert into DEPARTMENT VALUES('ONCOLOGY','Chae,Kevin',195);
insert into DEPARTMENT VALUES('GYNAECOLOGY','Hoinck,Susan',196);
insert into DEPARTMENT VALUES('CARDIOLOGY','Channing,Rosanna',118);
insert into DEPARTMENT VALUES('TRANSPORTATION','Monet,Claude',173);
insert into DEPARTMENT VALUES('LOGISTICS','Patterson,John',127);
insert into DEPARTMENT VALUES('UROLOGY','Turner,Ed',39);
insert into DEPARTMENT VALUES('DERMATOLOGY','Parker,Russell',199);
insert into DEPARTMENT VALUES('DENTAL','Elliot,Ken',75);
insert into DEPARTMENT VALUES('PODIATRY','Ann,Mary',196);
insert into DEPARTMENT VALUES('OUTPATIENT','Ash,Jude',20);
insert into DEPARTMENT VALUES('INPATIENT','Ling,Cornelia',164);
insert into DEPARTMENT VALUES('PARAMEDICAL','Summer,Alice',63);
insert into DEPARTMENT VALUES('REHABILITATION','Morgan,Richard',75);

SELECT * FROM DEPARTMENT;

 /*POPULATE AUDITOR TABLE*/
INSERT INTO AUDITOR VALUES ('KU0079','Ball,Nancy');
INSERT INTO AUDITOR VALUES ('KU0080','Emmerson,Nancy');
INSERT INTO AUDITOR VALUES ('KU0106','Chae,Kevin');
INSERT INTO AUDITOR VALUES ('KU0119','Hoinck,Susan');
INSERT INTO AUDITOR VALUES ('KU0046','Channing,Rosanna');
INSERT INTO AUDITOR VALUES ('PU007','Monet,Claude');
INSERT INTO AUDITOR VALUES ('KU0131','Patterson,John');
INSERT INTO AUDITOR VALUES ('KU9103','Turner,Ed');
INSERT INTO AUDITOR VALUES ('KU9104','Parker,Russell');
INSERT INTO AUDITOR VALUES ('KU9105','Elliot,Ken');
INSERT INTO AUDITOR VALUES ('KU9106','Ann,Mary');
INSERT INTO AUDITOR VALUES ('KU9107','Ash,Jude');

SELECT * FROM AUDITOR;

/*POPULATE  EMPLOYEE TABLE*/
insert into EMPLOYEE VALUES('KUTZ485','JO',' ','HARRIS','100009000','Berlin','888555','RADIOLOGY','KUTZ485');
insert into EMPLOYEE VALUES('KUTZ486','JO',' ','JOHN','100009001','Greater London','888555','NEUROLOGY','KUTZ486');
insert into EMPLOYEE VALUES('KUTZ487','FOX',' ','SAMANTHA','100009002','Tokyo-To','888555','TECHNOLOGY','KUTZ487');
insert into EMPLOYEE VALUES('KUTZ488','TEAGLE',' ','MIKE','100009005','Chatswood','888555','HR','KUTZ488');
insert into EMPLOYEE VALUES('KUTZ489','ZACH',' ','JOE','100009009','Groningen','888555','OPTOMOLOGY','KUTZ489');
insert into EMPLOYEE VALUES('KUTZ490','STAN',' ','WON','100009010','San Jose','888555','PROCUREMENT','KUTZ490');
insert into EMPLOYEE VALUES('KUTZ491','DARREN',' ','WANG','100009014','San Jose','888555','FINANCE','KUTZ491');
insert into EMPLOYEE VALUES('KUTZ492','SINGH',' ','VIJAY','100009018','San Jose','888555','FINANCE','KUTZ492');
insert into EMPLOYEE VALUES('KUTZ493','MATHEW',' ','ROY','100009034','Luxemburg','888555','FINANCE','KUTZ493');
insert into EMPLOYEE VALUES('KUTZ494','MULLEN',' ','RAY','100009054','San Jose','888555','ADMIN','KUTZ494');
insert into EMPLOYEE VALUES('KUTZ495','JOY',' ','MARTINEZ','100009055','San Jose','888555','ONCOLOGY','KUTZ495');
insert into EMPLOYEE VALUES('KUTZ496','JUNG',' ','VALERIE','100009034','San Jose','888555','GYNAECOLOGY','KUTZ496');
insert into EMPLOYEE VALUES('KUTZ497','YU',' ','JERRY','100009074','San Jose','888555','CARDIOLOGY','KUTZ497');
insert into EMPLOYEE VALUES('KUTZ498','VAN',' ','GOUGH','100009082','San Jose','888555','TRANSPORTATION','KUTZ498');
insert into EMPLOYEE VALUES('KUTZ499','SIMON',' ','PETE','100009083','San Jose','888555','LOGISTICS','KUTZ499');
insert into EMPLOYEE VALUES('MM000000001','MIKE',' ','LEMON','100009084','San Jose','888555','OTHER','MM000000001');
insert into EMPLOYEE VALUES('MM000000002','JOHN',' ','LI','100001006','San Jose','888555','GENERAL','MM000000002');
insert into EMPLOYEE VALUES('MM000000003','STAN',' ','SWEET','100001034','San Jose','888555','ADMIN','MM000000003');
insert into EMPLOYEE VALUES('MM000000004','JU',' ','BUTTER','100001099','San Jose','888555','ONCOLOGY','MM000000004');
insert into EMPLOYEE VALUES('MM000000005','XE',' ','PING','100009089','San Jose','888555','GYNAECOLOGY','MM000000005');
insert into EMPLOYEE VALUES('MM000000006','RAM',' ','VIN','100009099','San Jose','888555','CARDIOLOGY','MM000000006');
insert into EMPLOYEE VALUES('MM000000007','JANE',' ','FONDA','100009092','San Jose','888555','TRANSPORTATION','MM000000007');
insert into EMPLOYEE VALUES('IXHEEE168','JAMES',' ','DEINDORFER','100003619','Berlin','888555','RADIOLOGY','KUTZ485');
insert into EMPLOYEE VALUES('IXHEEE172','SUSAN',' ','DOBBS','100007069','Greater London','888555','NEUROLOGY','KUTZ486');
insert into EMPLOYEE VALUES('IXHEEE174','BARBARA',' ','SCHOFIELD','100004255','Tokyo-To','888555','TECHNOLOGY','KUTZ487');
insert into EMPLOYEE VALUES('IXHEEE176','ANNE',' ','BROWNIII','100004989','Chatswood','888555','HR','KUTZ488');
insert into EMPLOYEE VALUES('IXHEEE178','FRANCES',' ','NG','100005925','Groningen','888555','OPTOMOLOGY','KUTZ489');
insert into EMPLOYEE VALUES('KU0042','KENNETH',' ','SCHUMACHER','100007407','San Jose','888555','PROCUREMENT','KUTZ490');
insert into EMPLOYEE VALUES('KU0056','EDWARD',' ','NG','100004732','San Jose','888555','FINANCE','KUTZ491');
insert into EMPLOYEE VALUES('KU0057','JENNIFER',' ','LUIS','100003487','San Jose','888555','OTHER','KUTZ492');
insert into EMPLOYEE VALUES('IXHEEE161','CHERI',' ','SMITH','100007337','Luxemburg','888555','GENERAL','KUTZ493');
insert into EMPLOYEE VALUES('KU0008','CALVIN',' ','ROTH','100004088','San Jose','888555','ADMIN','KUTZ494');
insert into EMPLOYEE VALUES('KU0009','THERESA',' ','MONROE','100004503','San Jose','888555','ONCOLOGY','KUTZ495');
insert into EMPLOYEE VALUES('KU0010','SONYA',' ','VINCENT','100006375','Inglewood','888555','GYNAECOLOGY','KUTZ496');
insert into EMPLOYEE VALUES('KU0011','JOHN',' ','BENDETTO','100005979','San Jose','888555','CARDIOLOGY','KUTZ497');
insert into EMPLOYEE VALUES('KU0021','JESSICA',' ','BENDETTO','100004932','San Jose','888555','TRANSPORTATION','KUTZ498');
insert into EMPLOYEE VALUES('KU0022','CORNELIA',' ','TURNER','100003940','San Jose','888555','LOGISTICS','KUTZ499');
insert into EMPLOYEE VALUES('KU0029','CORNELIA',' ','LING','100003758','San Jose','888555','OTHER','MM000000001');
insert into EMPLOYEE VALUES('KU0032','ALICE',' ','SUMMER','100005421','San Jose','888555','GENERAL','MM000000002');
insert into EMPLOYEE VALUES('KU0037','RICHARD',' ','MORGAN','100007013','San Jose','888555','ADMIN','MM000000003');
insert into EMPLOYEE VALUES('KU9101','SUSAN',' ','LEE','100006216','San Francisco','888555','ONCOLOGY','MM000000004');
insert into EMPLOYEE VALUES('KU9102','MIKE',' ','COLLINS','100003763','San Francisco','888555','GYNAECOLOGY','MM000000005');
insert into EMPLOYEE VALUES('KU0075','DAVID',' ','MARTIGNONI','100003669','San Jose','888555','CARDIOLOGY','MM000000006');
insert into EMPLOYEE VALUES('KU0079','NANCY',' ','BALL','100005893','Ontario','888555','TRANSPORTATION','MM000000007');
insert into EMPLOYEE VALUES('KU0080','NANCY',' ','EMMERSON','100004729','San Jose','888555','LOGISTICS','KUTZ485');
insert into EMPLOYEE VALUES('KU0106','KEVIN',' ','CHAE','100006778','San Jose','888555','DENTAL','KUTZ486');
insert into EMPLOYEE VALUES('KU0119','SUSAN',' ','HOINCK','100005031','Arlington','888555','PODIATRY','KUTZ487');
insert into EMPLOYEE VALUES('KU0046','ROSANNA',' ','CHANNING','100006609','Casper','888555','OUTPATIENT','KUTZ488');
insert into EMPLOYEE VALUES('PU007','CLAUDE',' ','MONET','100005269','Centerville','888555','INPATIENT','KUTZ489');
insert into EMPLOYEE VALUES('KU0131','JOHN',' ','PATTERSON','100004645','Kansas City','888555','PARAMEDICAL','KUTZ490');
insert into EMPLOYEE VALUES('KU9103','ED',' ','TURNER','100003703','San Francisco','888555','REHABILITATION','KUTZ491');
insert into EMPLOYEE VALUES('KU9104','RUSSELL',' ','PARKER','100005698','San Francisco','888555','DENTAL','KUTZ492');
insert into EMPLOYEE VALUES('KU9105','KEN',' ','ELLIOT','100004926','San Francisco','888555','PODIATRY','KUTZ493');
insert into EMPLOYEE VALUES('KU9106','MARY',' ','ANN','100005146','San Francisco','888555','OUTPATIENT','KUTZ494');
insert into EMPLOYEE VALUES('KU9107','JUDE',' ','ASH','100006416','San Francisco','888555','INPATIENT','KUTZ495');

SELECT * FROM EMPLOYEE;

/*POPULATE  EXPENSETYPE TABLE*/
insert into EXPENSETYPE VALUES('AUTO','Auto Rental','500');
insert into EXPENSETYPE VALUES('AIRFARE','Airfare Expense','1000');
insert into EXPENSETYPE VALUES('ENTERO','Entertainment other','300');
insert into EXPENSETYPE VALUES('MEETING','Meeting','200');
insert into EXPENSETYPE VALUES('LAUNDRY','Laundry Expense','50');
insert into EXPENSETYPE VALUES('DINNER','Dinner Expense','80');
insert into EXPENSETYPE VALUES('PERDIEM','Per Diem Charge','100');
insert into EXPENSETYPE VALUES('LODGING','Hotel Expense ','600');
insert into EXPENSETYPE VALUES('ENTERM','Entertainment meeting','300');
insert into EXPENSETYPE VALUES('COURIER','Courier Charge','80');
insert into EXPENSETYPE VALUES('GAS','Gas Expense','200');
insert into EXPENSETYPE VALUES('BRKFAST','Breakfast Expense','30');
insert into EXPENSETYPE VALUES('GROUND','Ground Transportation','100');
insert into EXPENSETYPE VALUES('LUNCH','Lunch Expense','50');
insert into EXPENSETYPE VALUES('POSTAGE','Postage Expense','70');

SELECT * FROM EXPENSETYPE;

/*POPULATE  Reimbursement TABLE*/
Insert into Reimbursement values ('2566','PROCUREMENT','2022-04-15','Approved',697,'','KU0079');
Insert into Reimbursement values ('6226','CARDIOLOGY','2022-04-18','Approved',983,'','KU0119');
Insert into Reimbursement values ('5563','CARDIOLOGY','2022-04-15','Approved',910,'','KU0046');
Insert into Reimbursement values ('9542','CARDIOLOGY','2022-04-15','Approved',21,'','PU007');
Insert into Reimbursement values ('6999','CARDIOLOGY','2022-04-15','Approved',666,'','KU0131');
Insert into Reimbursement values ('8605','CARDIOLOGY','2022-04-17','Approved',769,'','KU9103');
Insert into Reimbursement values ('4632','CARDIOLOGY','2022-04-21','Approved',406,'','KU9104');
Insert into Reimbursement values ('8577','CARDIOLOGY','2022-04-15','Approved',924,'','KU9105');
Insert into Reimbursement values ('2450','CARDIOLOGY','2022-04-15','Approved',362,'','KU9106');
Insert into Reimbursement values ('7591','PROCUREMENT','2022-04-15','Rejected',470,'No receipt','KU9107');
Insert into Reimbursement values ('9900','PROCUREMENT','2022-04-18','Rejected',198,'No receipt','PU007');
Insert into Reimbursement values ('8238','FINANCE','2022-04-15','Approved',305,'','PU007');
Insert into Reimbursement values ('7784','GYNAECOLOGY','2022-04-15','Approved',767,'','PU007');
Insert into Reimbursement values ('2944','PROCUREMENT','2022-04-15','Approved',399,'','PU007');
Insert into Reimbursement values ('8380','LOGISTICS','2022-04-15','Approved',785,'','PU007');
Insert into Reimbursement values ('3459','PODIATRY','2022-04-29','Approved',265,'','KU0131');
Insert into Reimbursement values ('1950','PODIATRY','2022-04-27','Approved',399,'','KU9103');
Insert into Reimbursement values ('1868','PODIATRY','2022-04-15','Approved',69,'','KU9104');
Insert into Reimbursement values ('2747','PODIATRY','2022-04-15','Approved',424,'','KU9105');
Insert into Reimbursement values ('7546','PODIATRY','2022-04-15','Approved',225,'','KU9106');

SELECT * FROM Reimbursement;

/*POPULATE  EXPENSE TABLE*/
insert into EXPENSE VALUES ('0000000070','2566','KU0042','2022-04-03','2022-04-06',697,'Presentation in NY','APPROVED','ENTERO','KUTZ490','Approved as per policy','KU0079');
insert into EXPENSE VALUES ('0000000021','6226','KU0075','2022-04-06','2022-04-10',983,'Training','APPROVED','DINNER','MM000000006','Approved as per policy','KU0119');
insert into EXPENSE VALUES ('0000000022','5563','KU0075','2022-04-07','2022-04-11',910,'Out of town meeting','APPROVED','PERDIEM','MM000000006','Approved as per policy','KU0046');
insert into EXPENSE VALUES ('0000000023','9542','KU0075','2022-04-08','2022-04-12',21,'Product training','APPROVED','LODGING','MM000000006','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000024','6999','KU0075','2022-04-09','2022-04-13',666,'consulting','APPROVED','ENTERM','MM000000006','Approved as per policy','KU0131');
insert into EXPENSE VALUES ('0000000025','8605','KU0075','2022-04-10','2022-04-14',769,'Business trip','APPROVED','COURIER','MM000000006','Approved as per policy','KU9103');
insert into EXPENSE VALUES ('0000000026','4632','KU0075','2022-04-11','2022-04-15',406,'Meeting costs','APPROVED','GAS','MM000000006','Approved as per policy','KU9104');
insert into EXPENSE VALUES ('0000000027','8577','KU0075','2022-04-12','2022-04-16',924,'General Expense Report','APPROVED','BRKFAST','MM000000006','Approved as per policy','KU9105');
insert into EXPENSE VALUES ('0000000028','2450','KU0075','2022-04-13','2022-04-17',362,'Customer Training','APPROVED','GROUND','MM000000006','Approved as per policy','KU9106');
insert into EXPENSE VALUES ('0000000051','7591','KU0042','2022-04-14','2022-04-18',470,'Training for overseas sales','APPROVED','LUNCH','KUTZ490','Approved as per policy','KU9107');
insert into EXPENSE VALUES ('0000000052','9900','KU0042','2022-04-15','2022-04-19',198,'Training for Germany branch','APPROVED','POSTAGE','KUTZ490','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000053','8238','KU0056','2022-04-16','2022-04-20',305,'Demo for new product','APPROVED','GROUND','KUTZ491','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000054','7784','KU0010','2022-04-17','2022-04-21',767,'Lunch with customer','APPROVED','GROUND','KUTZ496','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000055','2944','KU0042','2022-04-18','2022-04-21',399,'Campus Recruitment','APPROVED','GROUND','KUTZ490','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000056','8380','KU0080','2022-04-19','2022-04-22',785,'Meeting costs','APPROVED','GROUND','KUTZ485','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000057','3459','KU0119','2022-04-20','2022-04-25',265,'Product training','APPROVED','GROUND','KUTZ487','Approved as per policy','KU0131');
insert into EXPENSE VALUES ('0000000058',1950,'KU0119','2022-04-21','2022-04-23',399,'Out of town meeting','APPROVED','ENTERM','KUTZ487','Approved as per policy','KU9103');
insert into EXPENSE VALUES ('0000000059','1868','KU0119','2022-04-22','2022-04-26',69,'Dev and Learning Sciences I','APPROVED','COURIER','KUTZ487','Approved as per policy','KU9104');
insert into EXPENSE VALUES ('0000000060','2747','KU0119','2022-04-23','2022-04-25',424,'Training','APPROVED','GAS','KUTZ487','Approved as per policy','KU9105');
insert into EXPENSE VALUES ('0000000061',null,'KU0119','2022-04-23','2022-04-26',225,'Training','REJECTED','BRKFAST','KUTZ487','Exceeds Exp Limit',null);

SELECT * FROM EXPENSE;

/*End User Query 1 * - Auditor Query to find out how many expense reports were approved/rejected */
Select E.EMPLID,E.ReimbursementID,E.ExpStatus,E.ExpAmt,A.AuditorID,
A.AuditorName, 
r.ReimbursementAmount,r.ReimbursementStatus,r.ReimbursementDept,
r.ReimbursementDate
from Expense E LEFT JOIN Auditor A ON A.auditorid=e.AuditorID
LEFT JOIN Reimbursement R ON e.ReimbursementID=r.ReimbursementID;

/*End User Query 2 * - Auditor Query to find high risk expense report for employees */
select e1.EmpFirstName,e1.EmpLastName,e1.BankAccountNo,e.expid,e.reimbursementid,e.emplid,e.exptypeid,et.exptypeName,e.expamt,et.lmt,
case when lmt-expamt < 0 then 'High Risk'
else 'No Risk'
end as Risk, e.AuditorID
from expense e NATURAL JOIN expensetype et NATURAL JOIN employee e1;

/*End User Query 3 * - Employee Expenses by Department */
select e1.EmpFirstName,e1.EmpLastName,e1.BankAccountNo,e.expid,e.reimbursementid,e.emplid,e.exptypeid,et.exptypeName,e.expamt,et.lmt,
e.AuditorID,d.deptname,d.head,d.deptsize
from expense e, expensetype et, employee e1, department d
where e.exptypeID=et.expTypeID and e.emplid=e1.emplid and e1.deptname=d.deptname ORDER BY deptname;
 
/*End User Query 4 * - Count of submitted Expenses in each Department */
select d.deptname,count(expid) AS exp_count
from employee e LEFT JOIN department d ON e.deptname=d.deptname
LEFT JOIN expense ex ON ex.emplid=e.emplid
GROUP BY deptname
having exp_count > 0;

/*End User Query 5 * - Comprehensive view of all columns in database */
select e.expid,r.reimbursementid,e1.emplid,expdate,e.submitdate,e.expamt,e.expdesc,e.expstatus,et.exptypeid,
e.supervisorid,e.supervisorcomment,a.auditorid,et.exptypename,et.lmt,e1.empfirstname,e1.emplastname,
e1.bankaccountno,e1.location,e1.phone_no,d.deptname,d.head,d.deptsize,a.auditorname,r.reimbursementdept,
r.reimbursementstatus,r.reimbursementamount,r.reasonofrejection
from expense e LEFT JOIN expensetype et ON e.exptypeID=et.expTypeID
LEFT JOIN employee e1 ON e.emplid=e1.emplid
LEFT JOIN department d ON e1.deptname=d.deptname
LEFT JOIN auditor a ON a.auditorid=e.auditorid
LEFT JOIN reimbursement r ON e.reimbursementID = r.reimbursementID;

/*SP1-Stored Procedure to find the status of expense report for an employee*/
DELIMITER // 
CREATE PROCEDURE sp_EmployeeERstatus(IN EMPLID varchar(25))
BEGIN
select ExpID,ReimbursementID,EMPLID,SubmitDate,ExpAmt,ExpStatus,ExpTypeID,SupervisorID,AuditorID
from Expense where EMPLID=EMPLID;
END//
DELIMITER ;
/*Call Stored procedure using the below employee ID */
call sp_EmployeeERstatus('KU0075');

/*SP2-Stored Procedure to find Average expense incurred on each expense type*/
DELIMITER // 
CREATE PROCEDURE sp_totalamt_exptype(IN enter_exptypename varchar(50))
BEGIN
select ExpTypeName,sum(ExpAmt) from expense e NATURAL JOIN expensetype et 
WHERE et.ExpTypeName=enter_exptypename
GROUP BY 1;
END //
DELIMITER ;
/*Call Stored procedure using the below expense type */
call sp_totalamt_exptype('Breakfast Expense');

/*SP3-Stored Procedure to find out which employee has charged a more than the expensetype limit and flag them as risk*/
DROP PROCEDURE sp_ExpenseRisk;
DELIMITER // 
CREATE PROCEDURE sp_ExpenseRisk(IN EMPLID varchar(25))
BEGIN
select e.expid,e.reimbursementid,e.emplid,e.exptypeid,et.exptypeName,e.expamt,et.lmt,
case when lmt-expamt < 0 then 'High Risk'
else 'No Risk'
end as Risk
 from expense e, expensetype et
where e.exptypeID=et.expTypeID
and e.EMPLID=EMPLID;
END//
DELIMITER ;
/*Call Stored procedure using the below employee ID */
call sp_ExpenseRisk('KU0075');

/*View1-View for employees to see the status of their expense report with security so that employee can only inquire about their report*/
CREATE VIEW v_empl_expense As
select e.ExpID,e.ReimbursementID,e.EMPLID,e.ExpDate,e.SubmitDate,e.ExpAmt,e.ExpTypeID,e.SupervisorID,e.SupervisorComment,e.AuditorID from expense e
where e.emplid='KU0075';
/*viewing data in the view */
select * from v_empl_expense;

/*View2-View to see total reimbursement amount disbursed as on particular date*/
create view  total_reimbursement_AMT as (
select reimbursementdate,sum(reimbursementamount) as total_reimbursementAMT
from reimbursement
group by 1
);
/*viewing data in the view */
select * from total_reimbursement_AMT;
select * from total_reimbursement_AMT
where reimbursementdate ='2022-04-15';

/*View3-View for Auditor to see all expenses audited and their associated reimbusement with access to auditors to see their expense report which were audited*/
CREATE VIEW v_empl_auditor AS
SELECT e.expid,e.ReimbursementID,e.EMPLID,e.ExpDate,e.ExpAmt,r.ReimbursementStatus,r.ReimbursementAmount,r.ReasonofRejection,r.AuditorID
FROM expense e, reimbursement r
WHERE e.ReimbursementID=r.ReimbursementID and e.auditorid=r.auditorid
and r.auditorid='PU007';
/*viewing data in the view */
select * from v_empl_auditor;











