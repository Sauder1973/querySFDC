/****** 
	CHATTER - FeedItem DATA DATA ------------------------------------------------------
	SQL QUERY FOR feeditem.event - Ceridan Salesforce.com Replica Database
	
	PARENT CHATTER POST ONLY
	
	W. Sauder
	Jan 24, 2017
	version 1.0

	Feeditem Data
	Contains the 'Parent Post' of each actual chatter post
	These are NOT included in the Children post in feedcomment


	Multiple ParentIds per Opportunity and Account which suggest the feed comments are only further conversations from these
	Comment Count is included.	


******/
SELECT 
	   feedItm.[Id]
	  ,feedItm.[Title]
      ,feedItm.[Type]
	  ,feedItm.[ParentId]
	  ,CAST(feedItm.[Body] AS varchar(max)) AS ItemFeedBody
      ,feedItm.[CommentCount]
      ,feedItm.[CreatedById]
      ,feedItm.[CreatedDate]
	  ,feedItm.[InsertedById]
	  ,feedItm.[LastEditById]
      ,feedItm.[LastEditDate]
      ,feedItm.[LastModifiedDate]
      ,feedItm.[LikeCount]
	  ,feedItm.[RelatedRecordId]
      ,feedItm.[Revision]
      ,feedItm.[SystemModstamp]
	  
	/* NOT USED

		,feedItm.[BestCommentId]
		,feedItm.[HasContent]
		,feedItm.[IsDeleted]
		,feedItm.[LinkUrl]
		,feedItm.[IsRichText]
		,feedItm.[HasLink]
	*/

	    FROM [SFDCReplicaDB].[dbo].[feeditem] AS feedItm
	
	-- REQUIRED TABLE JOINS
	--ACCOUNT LEFT JOIN OPPORTUNITY USING COMMON ACCOUNT CODES 001
		  INNER JOIN [SFDCReplicaDB].[dbo].[opportunity] as opp
			ON opp.Id = feedItm.ParentId


			WHERE --feedItm.ParentId LIKE '%006i%' AND 
			--(opp.[Type] = 'New Sale' or opp.[Type] = 'Migration')
			--AND 
			YEAR(opp.CloseDate) > 2012 
			and opp.Close_Reasons__c not like 'Duplicate Opportunity' 

--			AND (opp.StageName = 'Closed Lost' or opp.StageName = 'Closed Won')		-- TRAINING ONLY
--			AND (opp.StageName NOT LIKE 'Closed Lost' or opp.StageName NOT LIKE 'Closed Won')		-- PREDICT ONLY


			and DATEDIFF(d,opp.CreatedDate,opp.CloseDate) > 1
			AND  (opp.Primary_Product_Interest__c = 'Payroll' 
					or opp.Primary_Product_Interest__c = 'Dayforce HCM Payroll' 
					or opp.Primary_Product_Interest__c = 'Dayforce Workforce Management'
			OR opp.Primary_Product_Interest__c = 'Managed Payroll Solutions' 
					--or opp.Primary_Product_Interest__c = 'UK - Payroll' 
					or opp.Primary_Product_Interest__c = 'International Payroll Solutions')
			
			--AND 	feedItm.ParentId = '006i0000009ltpsAAA' 

			ORDER BY Id, ParentId --CAST(opp.[AccountId] AS varchar(max))




/* OLD CODE FOR QUERY

  where YEAR(CreatedDate) > 2013 
	AND feedItm.CommentCount > 0
	AND	feedItm.ParentId LIKE '%006i%'
	--AND ParentId = '006i000000csgJ4AAI'
  	ORDER BY ParentId, Id, CreatedDate
*/