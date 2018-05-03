use AdventureWorks2
go
Alter procedure uspGetEmployeeManagersPerDepartment
@BusinessEntityID int,
@Department varchar(50),
@FirstName varchar(50) output,
@LastName varchar(50) output,
@EmployeeJobTitle varchar(50) output,
@ManagerGender varchar(1) output,
@ManagerFirstName varchar(50) output,
@ManagerLastName varchar(50) output,
@EntityId int output
As
Begin
	
	set @EntityId = @BusinessEntityID;

	Declare @ManagerGobTitle varchar(50) = @Department + ' Manager';
	Declare @ID varchar(50);

	select
	 @FirstName = FirstName,
	 @LastName = LastName from Person.Person
	 where BusinessEntityID = @BusinessEntityID

	 select
	 @EmployeeJobTitle = JobTitle from HumanResources.Employee
	 where BusinessEntityID = @BusinessEntityID


	 select 
		@ID = BusinessEntityID
		,@ManagerGender = Gender from HumanResources.Employee
         where JobTitle = @ManagerGobTitle

	select
	 @ManagerFirstName = FirstName,
	 @ManagerLastName = LastName from Person.Person
	 where BusinessEntityID = @ID
End

