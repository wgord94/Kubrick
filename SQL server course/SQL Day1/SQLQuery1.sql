-- Push it real good, up to GIT
select distinct 
	 ProductID
	,Name as [Product Name]
	,Reverse(Substring(Reverse(Name),2,3)) as [Last 3]
	,StandardCost
	,ListPrice
	,ListPrice - StandardCost as Profit
from [AdventureWorks2014].[Production].Product

