
/*
	ZIP AND POSTAL CODE DATA --------------------------------------------------------------------
	SQL QUERY FOR dbo.Zip_Postal__c - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	Feb 06, 2017
	version 1.0
*/



/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
/** TOP (1000) **/
		[Id]
		,[UPPER_of_Zip_Postal_Name__c]
		,[Name]
		,[Loader_Name__c]
		,[Lat__c]
		,[Lon__c]
		,[Area_Code__c]
		,[Country__c]
		,[Country_Code__c]
		,[County__c]
		,[Geocode__Latitude__s]
		,[Geocode__Longitude__s]
		,[Estimated_Population__c]
		,[Time_Zone__c]
		,[State_Code__c]
		,[State_Province__c]

  FROM [SFDCReplicaDB].[dbo].[Zip_Postal__c]
  ORDER BY Name


  /** NOT USED
		[Acceptable_Cities__c]
		,[Accounts_Rollup__c]

		,[Business_Development_Executive__c]
		,[Commercial_Range__c]
		,[Commercial_Rep__c]
		,[Commercial_Zip_Owner__c]
		,[Corporate_Range__c]
		,[Corporate_Rep__c]

		,[CreatedById]
		,[CreatedDate]
		,[CurrencyIsoCode]
		,[Decomissioned__c]
		,[Enterprise_Range__c]
		,[Enterprise_Rep__c]

		,[FSA__c]


		,[IsDeleted]
		,[LastModifiedById]
		,[LastModifiedDate]
		,[LastReferencedDate]
		,[LastViewedDate]

		,[Lead_Owner_Manager_Email__c]

		,[Max_BDE__c]
		,[Max_Commercial__c]
		,[Min_BDE__c]
		,[Min_Commercial__c]

		,[Notes__c]
		,[OwnerId]
		,[Primary_City__c]
		,[Queue_2__c]
		,[Queue_2_Max__c]
		,[Queue_2_Min__c]
		,[Queue_3__c]
		,[Queue_3_Max__c]
		,[Queue_3_Min__c]
		,[Queue_Max__c]
		,[Queue_Min__c]
		,[Queue_Ownership__c]
		,[Region__c]
		,[Rep_1__c]
		,[Rep_1_ID__c]
		,[Rep_1_Max__c]
		,[Rep_1_Min__c]
		,[Rep_2__c]
		,[Rep_2_ID__c]
		,[Rep_2_Lower__c]
		,[Rep_2_Max__c]
		,[Rep_3__c]
		,[Rep_3_ID__c]
		,[Rep_3_Max__c]
		,[Rep_3_Min__c]
		,[Rep_4__c]
		,[Rep_4_ID__c]
		,[Rep_4_Max__c]
		,[Rep_4_Min__c]
		,[Rep_5__c]
		,[Rep_5_ID__c]
		,[Rep_5_Max__c]
		,[Rep_5_Min__c]
		,[Rep_6__c]
		,[Rep_6_ID__c]
		,[Rep_6_Max__c]
		,[Rep_6_Min__c]
		,[Rep_7__c]
		,[Rep_7_ID__c]
		,[Rep_7_Max__c]
		,[Rep_7_Min__c]
		,[SMB_Range__c]
		,[SMB_Rep__c]

		,[SystemModstamp]
		,[Time_Zone__c]
		,[Type__c]
		,[Unacceptable_Cities__c]
		,[Updated__c]


	  **/
