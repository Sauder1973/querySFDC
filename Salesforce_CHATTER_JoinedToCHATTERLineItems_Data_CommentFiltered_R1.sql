
with Comments as (
SELECT 
-- top(100)
	   feedItm.[Id]
	  ,comnttable.ParentId
	  ,CAST(comnttable.CommentBody AS varchar(max)) AS CommentBodyCast
      ,comnttable.CommentType
      ,comnttable.CreatedById
      ,comnttable.CreatedDate
      ,comnttable.FeedItemId
      --,comnttable.Id
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
	
	)
 SELECT * 
 FROM Comments
 WHERE CommentBodyCast like '%due to lack%'
 --ORDER BY ParentId, Id 

