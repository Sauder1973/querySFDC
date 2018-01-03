
/*
	EVENT DATA DATA 
	SQL QUERY FOR dbo.event - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	
	Modified March 27, 2017
	version 3.0


	CAN LINK VIA WHO - CONTACT 003 OR ACCOUNT 001 OR LEAD 00Q
	Corrected Issue with Multiple Events by Account ID

*/
SELECT 

DISTINCT
		 event.[AccountId]
		,event.[Id]
		,event.[Type]
		,event.[Onsite__c]
		,event.[WhatId]
		,event.[WhoId]
		,event.[Category__c]
		,event.[Sub_Category__c]
		,event.[Subject]


		,event.[ActivityDate]
		,event.[ActivityDateTime]
		,event.[EndDateTime]

		,event.[Assigned_To_Manager__c]


		,event.[Created_By_Department__c]
		,event.[Created_By_Division__c]

     
		,event.[CurrencyIsoCode]

		,CAST(event.[Description] as varchar(max)) as eventDescription
		,event.[DurationInMinutes]

		,event.[Event_Status__c]
		,event.[GroupEventType]

		,event.[IsAllDayEvent]
		,event.[IsArchived]
		,event.[IsChild]
		,event.[IsDeleted]
		,event.[IsGroupEvent]
		,event.[IsPrivate]
		,event.[IsRecurrence]
		,event.[IsReminderSet]


		,event.[Location]
		,event.[Meaningful_Activity_Age__c]
		,event.[Meaningful_Activity_Date__c]


		,event.[OwnerId]

		,event.[Recent_First_Call__c]

		,event.[ReminderDateTime]
		,event.[RPO_Assigned_to_AVP_DVP__c]
		,event.[RPO_Assigned_to_Manager__c]

		,event.[CreatedById]
		,event.[CreatedDate]
		,event.[SystemModstamp]
		,event.[Created_Date_Time__c]
		,event.[LastModifiedById]
		,event.[LastModifiedDate]
		,event.[StartDateTime]


  FROM [SFDCReplicaDB].[dbo].[event]
/* REQUIRED TABLE JOINS
	ACCOUNT LEFT JOIN OPPORTUNITY USING COMMON ACCOUNT CODES 001 */

		  LEFT JOIN [SFDCReplicaDB].[dbo].[opportunity] as opp
			ON event.AccountId = opp.AccountID
/*
			WHERE (opp.[Type] = 'New Sale' or opp.[Type] = 'Migration')
			AND YEAR(opp.CloseDate) > 2013 
			and opp.Close_Reasons__c not like 'Duplicate Opportunity' 
			

			
			and DATEDIFF(d,opp.CreatedDate,opp.CloseDate) > 1
			AND  (opp.Primary_Product_Interest__c = 'Payroll' 
				or opp.Primary_Product_Interest__c = 'Dayforce HCM Payroll' 
				or opp.Primary_Product_Interest__c = 'Dayforce Workforce Management'
				OR opp.Primary_Product_Interest__c = 'Managed Payroll Solutions' 
				or opp.Primary_Product_Interest__c = 'UK - Payroll' 
				or opp.Primary_Product_Interest__c = 'International Payroll Solutions')
ORDER BY event.[AccountId],event.[Id]

*/