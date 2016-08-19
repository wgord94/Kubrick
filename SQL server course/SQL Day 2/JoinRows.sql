
/*

select top 5
	 BusinessEntityID
	 ,FirstName
	,LastName
from person.Person with (nolock)

-- Union will joing the two queries together under the column headers of the top table
-- The data type for a given column must match in both tables. I.e. column 1 above is a number, column 1 below must also be a number
union all

select top 5
	 ProductID
	,Name
	,ProductNumber
from Production.Product with (nolock)


*/

----------------------------------------------------------------------------
--------- Union all joins all row whereas UNION REMOVES DUPLICATES ---------
----------------------------------------------------------------------------

/*

select 'A' as col1
union     ------------------- UNION
select 'A' as col1

select 'A' as col1
union all ------------------- UNION ALL
select 'A' as col1

*\

--EXCEPT
-- Except shows what is in the TOP table but NOT THE BOTTOM

--INTERSECT
--  