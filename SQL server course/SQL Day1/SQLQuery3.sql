select
	 *
from [production].Product
where productID = 1

begin tran

update [Production].[Product]
set Color = 'Green'
where ProductID = 1

rollback tran

select
	 *
from [production].Product
where productID = 1