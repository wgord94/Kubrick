select
	 [BusinessEntityId]
	,[EmailAddressID]
	,Substring([EmailAddress],CharIndex('@',[EmailAddress])+1,100) as [Email Domain]
	,Len(Substring([EmailAddress],CharIndex('@',[EmailAddress])+1,100))
	,Reverse(Substring(reverse(EmailAddress),CharIndex('@',reverse(EmailAddress))+1,100)) as [Email Name]
	,replace([emailaddress],'adventure-works.com','LoserLand')
from [Person].[EmailAddress]
declare @Haystack varchar(100) = 'blablablaNblaiblahblaiblarblaiblasblacblaoblaoblalblalblaiblakblaeblaAblakblay'
select replace(@Haystack,'bla',' ')
select stuff(@Haystack,1,7,'blabla')
