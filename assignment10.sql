SELECT [Name],ProductNumber,ListPrice as Price from Production.Product

select NationalIDNumber,HireDate,LoginID from HumanResources.Employee
where HireDate > '2009-01-01'

select [Name],ModifiedDate from Production.Product
where ProductLine Like '%S%' and DAY(ModifiedDate) < 5
order by ModifiedDate asc

select JobTitle,COUNT(Gender) As [Count] from HumanResources.Employee
group by JobTitle

select SUM(OrderQty) from Sales.SalesOrderDetail

select Sum(ListPrice) AS Price,ProductModelID from Production.Product
group by ProductModelID,ListPrice
having Sum(ListPrice) > 900

select ProductID,OrderQty from Sales.SalesOrderDetail
group by OrderQty,ProductID
having OrderQty < 4
order by ProductID


select Person.BusinessEntityID,JobTitle,Gender,FirstName,LastName from HumanResources.Employee
inner join Person.Person on Employee.BusinessEntityID = Person.BusinessEntityID


