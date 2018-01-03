/****** 
	CHATTER - LineItems Table DATA ------------------------------------------------------
	SQL QUERY FOR feeditem.event - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	Mar 7, 2017
	version 1.0

	LineItems Data
	Contains the 'Child Post' of each actual chatter post
	These are NOT included in the Parent or Feed Item post in feedcomment


	Multiple ParentIds per Opportunity and Account which suggest the feed comments are only further conversations from these
	Comment Count is included.	


******/

SELECT 
-- top(100)
	   feedItm.[Id]
	     ,comnttable.ParentId
	  ,CAST(comnttable.CommentBody AS varchar(max)) AS CommentBodyCast
      ,comnttable.CommentType
      ,comnttable.CreatedById
      ,comnttable.CreatedDate
      ,comnttable.FeedItemId
      ,comnttable.Id
      ,comnttable.InsertedById
      ,comnttable.IsDeleted
      ,comnttable.LastEditById
      ,comnttable.LastEditDate
      ,comnttable.RelatedRecordId
      ,comnttable.Revision
	  ,feedItm.[CommentCount]
	  	  
	FROM [SFDCReplicaDB].[dbo].[feedcomment] comnttable
    JOIN [SFDCReplicaDB].[dbo].[feeditem] feedItm
	ON comnttable.FeedItemId = feedItm.Id
	WHERE YEAR(comnttable.CreatedDate) > 2013	
	AND (comnttable.CommentType = 'TextComment' 
		OR comnttable.CommentType = 'TextPost')
	--AND comnttable.ParentId = '006i0000009ltpsAAA'

	--AND CommentBodyCast = 'Updated by Sales Operations due to lack of activity'
	ORDER BY comnttable.ParentId, feedItm.Id
 