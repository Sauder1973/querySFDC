
/*
	TASK DATA DATA ------------------------------------------------------
	SQL QUERY FOR dbo.task - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	Modified March 27, 2017
	version 3.0


	CAN LINK VIA WHO - CONTACT 003 OR ACCOUNT 001 OR LEAD 00Q
	Corrected Issue with Multiple Events by Account ID

*/
SELECT 

DISTINCT 
	--	CAST(opp.[AccountId] AS varchar(max)) AS OppAcctId
	--	,CAST(opp.CampaignId AS varchar(max)) AS OppCampaignId
	--	,CAST(opp.[StageName]AS varchar(max)) AS OppStageName
task.[AccountId]
,task.[Type]
,task.[Custom_Activity_Type__c]
,task.[CustomActivityFlow__c]
,task.[Status]
,task.[Sub_Category__c]
,task.[Sub_Type__c]
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





-- SYSTEM GENERATED

,task.[Created_Date_Time__c]
,task.[CreatedById]
,task.[CreatedDate]
,task.[LastModifiedById]
,task.[LastModifiedDate]
,task.[SystemModstamp]




FROM [SFDCReplicaDB].[dbo].[task] as task

  
-- REQUIRED TABLE JOINS
	--ACCOUNT LEFT JOIN OPPORTUNITY USING COMMON ACCOUNT CODES 001
		  LEFT JOIN [SFDCReplicaDB].[dbo].[opportunity] as opp
			ON task.AccountId =  opp.AccountID

			WHERE (opp.[Type] = 'New Sale' or opp.[Type] = 'Migration')
			AND YEAR(opp.CloseDate) > 2013 and opp.Close_Reasons__c not like 'Duplicate Opportunity' 
			
			--AND (opp.StageName = 'Closed Lost' or opp.StageName = 'Closed Won') --TRAINING
			AND (opp.StageName NOT LIKE 'Closed Lost' or opp.StageName NOT LIKE 'Closed Won') -- PREDICT
			
			and DATEDIFF(d,opp.CreatedDate,opp.CloseDate) > 1
			AND  (opp.Primary_Product_Interest__c = 'Payroll' 
			or opp.Primary_Product_Interest__c = 'Dayforce HCM Payroll' 
			or opp.Primary_Product_Interest__c = 'Dayforce Workforce Management'
			OR opp.Primary_Product_Interest__c = 'Managed Payroll Solutions' 
			--or opp.Primary_Product_Interest__c = 'UK - Payroll' 
			or opp.Primary_Product_Interest__c = 'International Payroll Solutions')
--ORDER BY CAST(opp.[AccountId] AS varchar(max))
ORDER BY task.[AccountId],task.[Id]





-- NOT USED
/*


,task.[IsArchived]
,task.[ActCount__c]
,task.[No_Answer__c]
,task.[Onsite__c]
,task.[Priority]
,task.[Recent_First_Call__c]
,task.[Record_Source__c]

,task.[ReminderDateTime]

,task.[Event_Status__c]

,task.[Delete_Task__c]
,task.[Legacy_Created_Date__c]

,task.[Migration_Ext_ID__c]
,task.[Migration_Source__c]

,task.[Depricated_Activity_Type__c]
,task.[Current_User_Meaningful__c]

,task.[CallDisposition]
,task.[CallDurationInSeconds]
,task.[CallObject]
,task.[CallType]

,task.[RecurrenceActivityId]
,task.[RecurrenceDayOfMonth]
,task.[RecurrenceDayOfWeekMask]
,task.[RecurrenceEndDateOnly]
,task.[RecurrenceInstance]
,task.[RecurrenceInterval]
,task.[RecurrenceMonthOfYear]
,task.[RecurrenceRegeneratedType]
,task.[RecurrenceStartDateOnly]
,task.[RecurrenceTimeZoneSidKey]
,task.[RecurrenceType]

,task.[Phone_Power__c]
*/








