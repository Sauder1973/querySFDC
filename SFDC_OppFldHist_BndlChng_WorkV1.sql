/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	  	opp.[Id] as OppId,
		opp.[Name] as CompanyName,
		opp.[AccountId],
		opp.[StageName],
		opp.Primary_Product_Interest__c,
		opp.[Type]
		
		,OppFldHist.[CreatedById]
      ,OppFldHist.[CreatedDate]
      ,OppFldHist.[Field]
      ,OppFldHist.[Id]
      ,OppFldHist.[IsDeleted]
      ,OppFldHist.[NewValue]
      ,OppFldHist.[OldValue]
      ,OppFldHist.[OpportunityId]


  FROM [SFDCReplicaDB].[dbo].[OpportunityFieldHistory] as OppFldHist

     
RIGHT JOIN   [SFDCReplicaDB].[dbo].[opportunity] as opp
ON OppFldHist.[OpportunityId] = opp.[Id]

  WHERE Field = 'Type' AND  NewValue = 'Bundle Change'