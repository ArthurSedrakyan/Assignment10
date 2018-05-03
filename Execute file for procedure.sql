declare @ID int;
declare @EmpName varchar(50);
declare @EmpLastName varchar(50);
declare @ManLastName varchar(50);
declare @ManName varchar(50);
declare @Gender varchar(1);
declare @EmpJobTitle varchar(50);


Execute uspGetEmployeeManagersPerDepartment 

@BusinessEntityID = 36,
@Department = 'Pacific Sales',
@FirstName = @EmpName output,
@LastName = @EmpLastName output,
@EmployeeJobTitle = @EmpJobTitle output,
@ManagerGender = @Gender  output,
@ManagerFirstName = @ManName output,
@ManagerLastName = @ManLastName output,
@EntityId = @ID output


select
	@ID AS ID,
	@EmpName AS EmplayeeMane,
	@EmpLastName AS EmployeeLastName,
	@EmpJobTitle AS JobTitle,
	@ManName AS ManagerName,
	@ManLastName AS ManagerLastName,
	@Gender AS ManagerGender
