/*
SFDC CONTACT DATA ------------------------------------------------------------------------
	SQL QUERY FOR dbo.contact using Opportunity to Pull USED contacts - Ceridan Salesforce.com Replica Database
	
	W. Sauder
	March 27, 2017
	version 2.0

	NEED TO REMOVE COMMENT FOR STAGE NAME - PREDICT AND TRAIN DUE TO SIZE OF DATA.

*/
	SELECT 

	
				
		/** CONTACT ONLY DETAILS 	**/
		 contact.[Id]
		,contact.[LastName]
		,contact.[FirstName]
		,contact.[AccountId]
		,contact.[Contact_Type__c]
		,contact.[Department]
		,contact.[Job_Level__c]
		,contact.[CleanStatus]
		,contact.[Contact_Sort__c]
		,contact.[Account_Active_Owner_ID__c]
		,contact.[ContactZipCode__c]
		,contact.[Title]
		,contact.[User_Role__c]
		,contact.[Lead_Source_Most_Recent__c]
		,contact.[LeadSource]
		,contact.[Salutation]
		,contact.[Name]

		,contact.[Email_Has_Bounced__c]


		,contact.[HasOptedOutOfEmail]
		,contact.[InActive__c]
		,contact.[IsEmailBounced]
		,contact.[Language_Preference__c]
		,contact.[MailingCity]
		,contact.[MailingCountry]
		,contact.[MailingPostalCode]
		,contact.[MailingState]

		,contact.[Primary_Language__c]
		,contact.[OwnerId]
		,contact.[RPO_Account_Owner__c]
		,contact.[RPO_Contact_Owner_Country__c]


		/** not sure if required  	**/
		,contact.[Last_Profiled_Date__c]




		/** SYSTEM RECORD  	**/
		,contact.[CreatedById]
		,contact.[CreatedDate]
		,contact.[X18_Char_ID__c]
		,contact.[LastActivityDate]
		,contact.[LastModifiedById]
		,contact.[LastModifiedDate]
		,contact.[LastViewedDate]




	FROM [SFDCReplicaDB].[dbo].[Contact] as contact
