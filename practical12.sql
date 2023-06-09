/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[Frist_name]
      ,[Middle_name]
      ,[Last_name]
      ,[DOB]
      ,[Mobile_number]
      ,[Address]
  FROM [demo].[dbo].[office_emp]

 -- insert into office_emp values ('Akash','A','Rana','2020-09-23',9429565620,'Bandni');
-- update demo.dbo.office_emp set [Frist_name] = 'SQL Person' where id=1;
 --update demo.dbo.office_emp set [Middle_name] = 'l';
--Delete from demo.dbo.office_emp where id <2;
--Delete from demo.dbo.office_emp;

alter table office_emp
add salary decimal;

