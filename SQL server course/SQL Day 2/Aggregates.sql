/*

STATS

-Count
-Sum
-avg
-min
-max
-stdev
-var
-varp

*/

--select 

--	 avg(sod.LineTotal) 'AvgSpend'
--	,stdev(sod.LineTotal) 'StandardDeviation'
--	,min(sod.Linetotal) 'Min Spend'
--	,max(sod.LineTotal) 'Max Spend'
--	,datename(yy,soh.orderdate) + ' Q ' + datename(qq,soh.OrderDate) 'Year - Quarter'

--from [AdventureWorks2014].[Sales].[SalesOrderDetail] sod with (nolock)
--join Production.Product pp with (nolock)
--	 on Sod.ProductID = Pp.ProductID

--join [sales].[SalesOrderHeader] soh  with (nolock)
--	 on sod.[SalesOrderID] = soh.[SalesOrderID]

--group by
--	 datename(yy,soh.orderdate) + ' Q ' + datename(qq,soh.OrderDate)

select
	 --pp.productnumber
	 pp.color
	,Count(color) 'Color Count'
from Production.product pp with (nolock)
--join Production.Product pp with (nolock)
--	 on Sod.ProductID = Pp.ProductID

--join [sales].[SalesOrderHeader] soh  with (nolock)
--	 on sod.[SalesOrderID] = soh.[SalesOrderID]

--where pp.color = 'Red'

group by pp.color

having count(*) >= avg(0)
-- Have to use Having here and not where becayse count isn't a thing until after we have grouped. But in the logical ordering, group comes after WHERE