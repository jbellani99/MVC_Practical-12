
--CREATE TABLE [dbo].[Employee](
--	[id] [int] NOT NULL primary key identity(1,1),
--	[First Name] [varchar](50) NOT NULL,
--	[Middle Name] [varchar](50) NULL,
--	[Last Name] [varchar](50) NOT NULL,
--	[DOB] [date] NOT NULL,
--	[Mobile Number] [int] NOT NULL,
--	[Address] [varchar](50) NULL,
--	[Salary] [decimal](18, 0) NOT NULL
--) 
--alter table Employee
--alter column [Mobile Number] varchar(10);
--insert into Employee values('Jay','k','prajapati','2002-09-20',8866250840,'Surat',60000.00);
--select sum(Salary) from Employee ;
--select * from Employee where DOB<'01-01-2001';
--Select count(*) from Employee where [Middle Name] = ' ';


---------------------------------------------------------Test3--------------------------------------------------------------
--alter table Employee 
--add   [DesignationId] int;
--create table Department(
--id int primary key identity(1,1),
--Name varchar(50)
--);
--alter table Employee
--add FOREIGN key (DepartmentId) REFERENCES Department(id); 

--insert into Designations values ('Manager');
--Select count(Designations.designation) from Designations;
--select Employee.[First Name],Employee.[Middle Name],Employee.[Last Name],Designations.designation from employee inner join Designations on  Employee.DesignationID = Designations.id;
--create view emp as select Employee.id,Employee.[First Name],Employee.[Middle Name],Employee.[Last Name],Employee.DOB,Employee.Salary,Employee.[Mobile Number], Designations.designation from employee inner join Designations on  Employee.DesignationID = Designations.id;
--select * from emp;
	--create  procedure desi_insert @designat varchar(50)
	--as
	--insert into Designations values (@designat);
	--EXEC desi_insert @designat='Lead';
	--create procedure Sp_emp (@fname varchar(50),@mname varchar(50),@lname varchar(50),@dob date,@mnumber varchar(10),@address varchar(50),@salary decimal(18,0),@designationid int)
	--as 
	--begin
	--insert into Employee ([First Name], [Middle Name], [Last Name], [DOB], [Mobile Number],[Address], [Salary],[DesignationId])values(@fname,@mname,@lname,@dob,@mnumber,@address,@salary,@designationid);
	--end

	--exec Sp_emp @fname='jay', @mname=' ',@lname='Prajapati',@dob='1999-09-20',@mnumber=8866250840,@address='ahmedabad',@salary=50000,@designationid=3;

	--Select Employee.DesignationId,Designations.designation,Designations.id from Employee inner join Designations on DesignationId ;
	 --select Designations.designation,employee.DesignationId,count (DesignationId) from Employee,Designations group by DesignationId;
	 --Select DesignationId, Count(*) as Total,Designations.designation from Employee inner join Designations on Employee.DesignationId = Designations.id group by DesignationId,designation having count(DesignationId)>1;  
	 --create procedure Sp_DOB
	 --As begin 
	 --Select  Employee.[First Name],Employee.[Middle Name],Employee.[Last Name],Employee.[DOB],Employee.[Mobile Number],Employee.[Address],Employee.[Salary],Designations.designation from Employee inner join Designations on Employee.DesignationId=Designations.id order by Employee.DOB;
	 --END
	 --exec Sp_DOB;
	 --create procedure Sp_fname(@temp_id int)
	 --as 
	 --begin
	 --select Employee.[First Name],Employee.[Middle Name],Employee.[Last Name],Employee.[DOB],Employee.[Mobile Number],Employee.[Address],Employee.[Salary] from Employee where @temp_id = DesignationId order by [First Name];
	 --end
		--exec Sp_fname @temp_id =1
		--Create nonclustered Index IX_tbl_DesignationID
		--on Employee(DesignationId asc)
--select * from employee order by Salary desc offset 0 Rows fetch first 1 rows only ; 