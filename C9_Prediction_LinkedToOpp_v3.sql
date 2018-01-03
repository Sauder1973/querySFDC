/*
	C9 DATA DATA ------------------------------------------------------
	SQL QUERY FOR dbo.c9scoring - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	June 15, 2017
	version 2.0


*/
SELECT 
	--DISTINCT
		opp.[Id]
		,CAST(opp.[AccountId] AS varchar(max)) AS OppAcctId
		, opp.[Name]
		,CAST(opp.[StageName]AS varchar(max)) AS OppStageName

	   ,acc.[Segment__c]		-- Segment Code
	   ,acc.[Segment_f2__c]	-- Combine f2 and f for a full sement
	   ,acc.[Segment_f__c]

		
	  ,c9_Data.[c9oppscoring__External_ID__c]
      ,c9_Data.[c9oppscoring__Opportunity_Id__c]
      ,c9_Data.[CreatedById]
      ,c9_Data.[CreatedDate]
	  ,c9_Data.[c9oppscoring__bucket_0_label__c]
      ,c9_Data.[c9oppscoring__bucket_1_label__c]
      ,c9_Data.[c9oppscoring__bucket_2_label__c]
      ,c9_Data.[c9oppscoring__bucket_3_label__c]
      ,c9_Data.[c9oppscoring__c9durationscore__c]
      ,c9_Data.[c9oppscoring__c9durationscore_bin__c]
      ,c9_Data.[c9oppscoring__c9durationscore_label__c]
      ,c9_Data.[c9oppscoring__c9score_bin__c]
      ,c9_Data.[c9oppscoring__c9score_label__c]
  

      ,c9_Data.[c9oppscoring__cat_0_fea_1_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_1_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_1_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_1_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_1_value__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_2_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_2_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_2_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_2_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_2_value__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_3_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_3_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_3_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_3_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_3_value__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_4_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_4_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_4_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_4_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_4_value__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_5_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_5_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_5_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_5_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_5_value__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_6_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_6_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_6_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_6_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_6_value__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_7_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_7_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_7_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_7_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_7_value__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_8_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_8_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_8_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_8_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_8_value__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_9_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_9_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_9_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_9_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_9_value__c]

	  ,c9_Data.[c9oppscoring__cat_0_fea_10_comment__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_10_importance__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_10_name__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_10_unit__c]
      ,c9_Data.[c9oppscoring__cat_0_fea_10_value__c]




      
      ,c9_Data.[c9oppscoring__cat_0_score__c]



      ,c9_Data.[CurrencyIsoCode]
      ,c9_Data.[Id]
      ,c9_Data.[IsDeleted]
      ,c9_Data.[LastModifiedById]
      ,c9_Data.[LastModifiedDate]
      ,c9_Data.[Name]
      ,c9_Data.[OwnerId]
      ,c9_Data.[SystemModstamp]
  FROM [SFDCReplicaDB].[dbo].[c9oppscoring__C9Score__c]  as c9_Data
  
  
  
  -- REQUIRED TABLE JOINS
	--ACCOUNT LEFT JOIN OPPORTUNITY USING COMMON ACCOUNT CODES 001
		  JOIN [SFDCReplicaDB].[dbo].[opportunity] as opp
			ON opp.[Id] = c9_Data.[c9oppscoring__Opportunity_Id__c]
			
		JOIN [SFDCReplicaDB].[dbo].[account] as acc
			ON acc.[Id] = opp.[AccountId]

		 
  ORDER BY    c9_Data.[c9oppscoring__Opportunity_Id__c]











  
	  /***
	  
	  ,c9_Data.[c9oppscoring__cat_0_bin_label__c]

	  ,c9_Data.[c9oppscoring__cat_0_name__c]

      ,c9_Data.[c9oppscoring__cat_0_weight__c]
      ,c9_Data.[c9oppscoring__cat_0_winloss__c]
      ,c9_Data.[c9oppscoring__cat_1_bin_label__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_1_comment__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_1_importance__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_1_name__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_1_value__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_2_comment__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_2_importance__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_2_name__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_2_value__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_3_comment__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_3_importance__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_3_name__c]
      ,c9_Data.[c9oppscoring__cat_1_fea_3_value__c]
      ,c9_Data.[c9oppscoring__cat_1_name__c]
      ,c9_Data.[c9oppscoring__cat_1_score__c]
      ,c9_Data.[c9oppscoring__cat_1_weight__c]
      ,c9_Data.[c9oppscoring__cat_1_winloss__c]
      ,c9_Data.[c9oppscoring__cat_2_bin_label__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_1_comment__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_1_importance__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_1_name__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_1_value__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_2_comment__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_2_importance__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_2_name__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_2_value__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_3_comment__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_3_importance__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_3_name__c]
      ,c9_Data.[c9oppscoring__cat_2_fea_3_value__c]
      ,c9_Data.[c9oppscoring__cat_2_name__c]
      ,c9_Data.[c9oppscoring__cat_2_score__c]

	  ,c9_Data.[c9oppscoring__cat_2_weight__c]
      ,c9_Data.[c9oppscoring__cat_2_winloss__c]
      ,c9_Data.[c9oppscoring__cat_3_bin_label__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_1_comment__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_1_importance__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_1_name__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_1_value__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_2_comment__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_2_importance__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_2_name__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_2_value__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_3_comment__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_3_importance__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_3_name__c]
      ,c9_Data.[c9oppscoring__cat_3_fea_3_value__c]
      ,c9_Data.[c9oppscoring__cat_3_name__c]
      ,c9_Data.[c9oppscoring__cat_3_score__c]
      ,c9_Data.[c9oppscoring__cat_3_weight__c]
      ,c9_Data.[c9oppscoring__cat_3_winloss__c]
     */
