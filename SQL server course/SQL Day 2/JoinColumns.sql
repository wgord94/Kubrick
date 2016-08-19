--select top 10 Percent
--	 *
--from [AdventureWorks2014].[Sales].[SalesOrderHeader] with (nolock)

--select top 10
--	 *
--from [AdventureWorks2014].[Sales].[SalesOrderDetail] with (nolock)

--select 
--	 Name
--	,ListPrice
--	,StandardCost
--	,Color
--	,UnitPrice
--	,OrderQty
--	,CarrierTrackingNumber
--	,LineTotal
--from [AdventureWorks2014].[Sales].[SalesOrderDetail], [AdventureWorks2014].[Production].[Product]
--where [AdventureWorks2014].[Sales].[SalesOrderDetail].ProductID = [AdventureWorks2014].[Production].[Product].ProductID

-- Good practice form for joining tables.
-- After from I give the table, [sales].salesorderdetail the alias sod
-- MUST reference as sod everywhere that it's used
select
	 Pp.Name
	,Pp.ListPrice
	,cast(Pp.StandardCost as decimal(9,1)) 'Standard Cost'
	,Pp.Color
	,Sod.UnitPrice
	,Sod.OrderQty
	,Sod.CarrierTrackingNumber
	,Sod.LineTotal
	,cast(soh.OrderDate as date) OrderDate
	,datename(yy,soh.DueDate) 'DueDate Year'
	,datename(qq,soh.DueDate) 'DueDate Quarter'
	,cast(soh.ShipDate as datetimeoffset) ShipDate
	,convert(date,soh.ShipDate,7)
	,DATEADD(month, DATEDIFF(month, 0, soh.orderdate), 0) AS StartOfMonth

from [AdventureWorks2014].[Sales].[SalesOrderDetail] sod with (nolock)
join Production.Product pp with (nolock)
	 on Sod.ProductID = Pp.ProductID

join [sales].[SalesOrderHeader] soh  with (nolock)
	 on sod.[SalesOrderID] = soh.[SalesOrderID]

where 1=1
	and datediff(yy,cast(soh.orderdate as date),getdate()) <=6


-- Join = Inner join. Inner join is the default type
-- Inner join will only return the rows where there is a match in both tables
-- E.g. If there was a product ID in one table but not the other, it own't be joined
-- LEFT Outer join will give you everything form the table on the left and only matching fromt he table on the left
-- RIGHT outer join will give all of the values from the table on the right (as it has been written) and the matching ones from the left
-- FULL OUTER is everything

