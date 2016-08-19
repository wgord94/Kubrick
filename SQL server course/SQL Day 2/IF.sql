/*
select
	 Name
	,ListPrice
	,Case
		when ListPrice = 0 then 'FREE!'
		when ListPrice between 1 and 10 then 'Dirt Cheap!'
		when ListPrice between 10 and 1700.99 then 'Hmm'
		when ListPrice >= 1700.99 then 'Sod that'
		else 'Womp Womp'
	 end as PriceDescription
	 ,Name +'   £'+ cast(ListPrice as varchar(25)) as 'Name Price' 
from production.product with (nolock)
order by ListPrice desc
*/

select 'Aksheyen' + ' Dave'
select
	 FirstName
	,isNull(MiddleName,'LoserFace')
	,LastName
	,isNull(NullIf(FirstName, 'Aksheyen'),'Lame') + ' ' + isNull(MiddleName,'LoserFace') +' ' + LastName as 'Full Name'
from Person.Person