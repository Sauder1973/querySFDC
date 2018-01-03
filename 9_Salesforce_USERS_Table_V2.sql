/**
		SFDC USER DATA 
		SQL QUERY FOR dbo.user 
		W. Sauder
		August 27, 2017
		version 2.0

		DOES NOT NEED PREDICTION OR TRAINING QUERY DUE TO SIZE OF TABLE.

**/
SELECT 

		[Id]
		,[Name]
		,[Department]
		,[Division]
		,[CompanyName]
		,[Hire_Date__c]	/** JUST ADDED MARCH 27 **/

		,[Title]
		,[City]
		,[StateCode]
		,[PostalCode]
		,[CountryCode]
		,[CurrencyIsoCode]

		,[ManagerId]

		,[Has_Quota__c]

		,[IsActive]
		,[LastLoginDate]
		,[LastReferencedDate]
		,[LastViewedDate]
		,[License_Allocation__c]

		,[Profile_Name__c]
		,[ProfileId]

		,[RPO_Active__c]
		,[SC_RVP2__c]
		,[SCRVP__c]
		,[User_Currency__c]
		,[UserRoleId]
		,[January__c]
		,[February__c]
		,[March__c]
		,[April__c]
		,[May__c]
		,[June__c]
		,[July__c]
		,[August__c]
		,[September__c]
		,[October__c]
		,[November__c]
		,[December__c]


		,[Q1__c]
		,[Q2__c]
		,[Q3__c]
		,[Q4__c]

		,[CreatedById]
		,[CreatedDate]
		,[Migration_Tag__c]

FROM [SFDCReplicaDB].[dbo].[user]

