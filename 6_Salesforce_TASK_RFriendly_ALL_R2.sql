
/*
	TASK DATA DATA ------------------------------------------------------
	SQL QUERY FOR dbo.task - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	Modified Sept 14, 2017
	version 3.0


*/
SELECT 

task.[AccountId]
,task.[Type]
,task.[Custom_Activity_Type__c]
,task.[CustomActivityFlow__c]
,task.[Status]
,task.[Sub_Category__c]
,task.[SubType__c]
,task.[WhatId]
,task.[WhoId]

,task.[ActivityDate]
,task.[Assigned_To_Manager__c]
,task.[Call_Results__c]
,task.[Category__c]
,task.[Created_By_Department__c]
,task.[Created_By_Division__c]
,task.[CurrencyIsoCode]
,CAST(task.[Description] AS varchar(max)) AS TaskDescription
,task.[Id]

,task.[IsClosed]
,task.[IsDeleted]
,task.[IsHighPriority]
,task.[IsRecurrence]
,task.[IsReminderSet]
,task.[Meaningful_Activity_Age__c]
,task.[Meaningful_Activity_Date__c]
,task.[OwnerId]
,task.[RPO_Assigned_to_AVP_DVP__c]
,task.[RPO_Assigned_to_Manager__c]
,task.[Subject]


,task.[Created_Date_Time__c]
,task.[CreatedById]
,task.[CreatedDate]
,task.[LastModifiedById]
,task.[LastModifiedDate]
,task.[SystemModstamp]




FROM [SFDCReplicaDB].[dbo].[task] as task
