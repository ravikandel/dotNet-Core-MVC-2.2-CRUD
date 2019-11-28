CREATE TABLE [dbo].[tblEmployee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[City] [varchar](20) NOT NULL,
	[Department] [varchar](20) NOT NULL,
	[Gender] [varchar](6) NOT NULL
)

CREATE procedure [dbo].[spDeleteEmployee]         
(          
   @EmpId int          
)          
as           
begin          
   Delete from tblEmployee where EmployeeId=@EmpId          
End 


CREATE procedure [dbo].[spGetAllEmployees]      
as      
Begin      
    select *      
    from tblEmployee      
End 


CREATE procedure [dbo].[spUpdateEmployee]          
(          
   @EmpId INTEGER ,        
   @Name VARCHAR(20),         
   @City VARCHAR(20),        
   @Department VARCHAR(20),        
   @Gender VARCHAR(6)        
)          
as          
begin          
   Update tblEmployee           
   set Name=@Name,          
   City=@City,          
   Department=@Department,        
   Gender=@Gender          
   where EmployeeId=@EmpId          
End    

CREATE procedure [dbo].[spAddEmployee]         
(        
    @Name VARCHAR(20),         
    @City VARCHAR(20),        
    @Department VARCHAR(20),        
    @Gender VARCHAR(6)        
)        
as         
Begin         
    Insert into tblEmployee (Name,City,Department, Gender)         
    Values (@Name,@City,@Department, @Gender)         
End 